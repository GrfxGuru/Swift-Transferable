@_private(sourceFile: "ContentView.swift") import TransferableTest
import UniformTypeIdentifiers
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/peter/Developer/Xcode/TransferableTest/TransferableTest/ContentView.swift", line: 45)
    ContentView()
  
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/peter/Developer/Xcode/TransferableTest/TransferableTest/ContentView.swift", line: 19)
    VStack (spacing: __designTimeInteger("#6913.[2].[4].property.[0].[0].arg[0].value", fallback: 30)) {
      Text(showText)
      Text(shareable.caption)
      imageFile
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width:__designTimeInteger("#6913.[2].[4].property.[0].[0].arg[1].value.[2].modifier[2].arg[0].value", fallback: 100), height: __designTimeInteger("#6913.[2].[4].property.[0].[0].arg[1].value.[2].modifier[2].arg[1].value", fallback: 100))
        .dropDestination(for: Image.self) { items, location in
          imageFile = items.first ?? Image(__designTimeString("#6913.[2].[4].property.[0].[0].arg[1].value.[2].modifier[3].arg[1].value.[0].[0]", fallback: "CSPodcast"))
          shareable.image = items.first ?? Image(__designTimeString("#6913.[2].[4].property.[0].[0].arg[1].value.[2].modifier[3].arg[1].value.[1].[0]", fallback: "CSPodcast"))
          return __designTimeBoolean("#6913.[2].[4].property.[0].[0].arg[1].value.[2].modifier[3].arg[1].value.[2]", fallback: true)
        }
      ShareLink(item: shareable,
                preview: SharePreview(__designTimeString("#6913.[2].[4].property.[0].[0].arg[1].value.[3].arg[1].value.arg[0].value", fallback: "Some text"), image: shareable.image))
      PasteButton(payloadType: String.self, onPaste: { strings in
        showText = strings.first ?? __designTimeString("#6913.[2].[4].property.[0].[0].arg[1].value.[4].arg[1].value.[0].[0]", fallback: "no paste for you")
      })
    }
    .padding()
    .frame(width: __designTimeInteger("#6913.[2].[4].property.[0].[0].modifier[1].arg[0].value", fallback: 200), height: __designTimeInteger("#6913.[2].[4].property.[0].[0].modifier[1].arg[1].value", fallback: 400))
  
#sourceLocation()
    }
}

import struct TransferableTest.ContentView
import struct TransferableTest.ContentView_Previews
import struct TransferableTest.ShareablePhoto

