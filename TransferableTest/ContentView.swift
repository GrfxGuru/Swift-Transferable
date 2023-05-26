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
            //shareable.image = items.first ?? Image("CSPodcast")
            return true
          }
      }
      .padding()
      LazyVGrid (columns: displayGrid) {
        ForEach(imageArray, id: \.self) { item in
          GridImageItem(theImage: item, selectedImageArray: $selectedImageArray, imagesToShare: $imagesToShare)
//          VStack {
//            item.imageFile
//              .resizable()
//              .aspectRatio(contentMode: .fit)
//              .frame(width:100, height: 100)
//            Button (action: {
//              isPressed = true
//              selectedImageArray.append(item)
//              let newImageToAdd = ShareablePhoto(image: item.imageFile, caption: "Here's the caption")
//              imagesToShare.append(newImageToAdd)
//            }, label: {
//              Text("Select")
//            })
//            .background(isPressed ? Color.white : Color.purple)
//          }
        }
      }
        Spacer()
        HStack {
          ShareLink(items: imagesToShare) { photo in
            SharePreview(photo.caption, image: photo.image)
        }
          Button(action: {imageArray = []}, label: {
            Image(systemName: "trash.fill")
          })
        }
      }
      .frame(width: 400, height: 400)

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
