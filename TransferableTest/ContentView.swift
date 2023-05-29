//
//  ContentView.swift
//  TransferableTest
//
//  Created by Peter Witham on 5/22/23.
//

import SwiftUI
import UniformTypeIdentifiers

struct ContentView: View {

  @State var imageFile = Image("DropTarget")
  @State var shareable = ShareablePhoto(image: Image("DropTarget"), caption: "Here's the caption")
  @State var showText = "Some initial text"
  @State var displayGrid:[GridItem] = [GridItem(.flexible()), GridItem(.flexible())]
  @State var imageArray:[ImageModel] = []
  @State var selectedImageArray:[ImageModel] = []
  @State var imagesToShare:[ShareablePhoto] = []
  @State var isPressed = false

  var body: some View {
    VStack {
      HStack () {
        imageFile
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width:100, height: 100)
          .dropDestination(for: Image.self) { items, location in
            imageArray.append(contentsOf: items.map { item in
              return ImageModel(id: UUID(), imageFile: item)
            })
            return true
          }
        Spacer()
      }
      .padding()
      if imageArray.count != 0 {
        LazyVGrid (columns: displayGrid) {
          ForEach(imageArray, id: \.self) { item in
            GridImageItem(theImage: item,
                          selectedImageArray: $selectedImageArray,
                          imagesToShare: $imagesToShare)
          }
        }
        Spacer()
        VStack {
          HStack {
            Text("Total images: \(imageArray.count)")
            Spacer()
            Text("Selected images: \(selectedImageArray.count)")
          }.padding()
          HStack {
            ShareLink(items: imagesToShare) { photo in
              SharePreview(photo.caption, image: photo.image)
            }.disabled(
              (selectedImageArray.count != 0 ? false:true)
            )
            Button(action: {imageArray = []}, label: {
              Image(systemName: "trash.fill")
            }).disabled(
              (imageArray.count != 0 ? false:true)
            )
            Button(action: {
              displayGrid.append(GridItem(.flexible()))
            }, label: {
              Text("+")
            })
            Button(action: {
              displayGrid.removeLast()
            }, label: {
              Text("-")
            })
          }.padding()
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

extension UTType {
  static var theImageToShare: UTType = UTType(exportedAs: "com.peterwitham.transferableTest")
}

struct ShareablePhoto: Transferable {
  static var transferRepresentation: some TransferRepresentation {
    ProxyRepresentation(exporting: \.image)
  }
  var image: Image
  var caption: String
}
