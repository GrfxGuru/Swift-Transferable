//
//  ContentView.swift
//  TransferableTest
//
//  Created by Peter Witham on 5/22/23.
//

import SwiftUI
import UniformTypeIdentifiers

struct ContentView: View {
  
  let link = URL(string: "https://www.compileswift.com")!
  @State var imageFile = Image("CSPodcast")
  @State var shareable = ShareablePhoto(image: Image("CSPodcast"), caption: "Here's the caption")
  @State var showText = "Some initial text"
  
  var body: some View {
    VStack (spacing: 30) {
      Text(showText)
      Text(shareable.caption)
      imageFile
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width:100, height: 100)
        .dropDestination(for: Image.self) { items, location in
          imageFile = items.first ?? Image("CSPodcast")
          shareable.image = items.first ?? Image("CSPodcast")
          return true
        }
      ShareLink(item: shareable,
                preview: SharePreview("Some text", image: shareable.image))
      PasteButton(payloadType: String.self, onPaste: { strings in
        showText = strings.first ?? "no paste for you"
      })
    }
    .padding()
    .frame(width: 200, height: 400)
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
