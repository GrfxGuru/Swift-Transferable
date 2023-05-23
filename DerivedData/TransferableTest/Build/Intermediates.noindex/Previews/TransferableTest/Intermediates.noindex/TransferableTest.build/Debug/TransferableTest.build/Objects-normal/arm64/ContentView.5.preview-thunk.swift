@_private(sourceFile: "ContentView.swift") import TransferableTest
import UniformTypeIdentifiers
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/peter/Developer/Xcode/TransferableTest/TransferableTest/ContentView.swift", line: 61)
    __designTimeSelection(ContentView(), "#6913.[3].[0].property.[0].[0]")
  
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/peter/Developer/Xcode/TransferableTest/TransferableTest/ContentView.swift", line: 20)
    __designTimeSelection(VStack {
      __designTimeSelection(HStack () {
        __designTimeSelection(imageFile
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width:__designTimeInteger("#6913.[2].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100), height: __designTimeInteger("#6913.[2].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[1].value", fallback: 100))
          .dropDestination(for: __designTimeSelection(Image.self, "#6913.[2].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[3].arg[0].value")) { items, location in
            __designTimeSelection(imageArray.append(contentsOf: __designTimeSelection(items.map { item in
              return __designTimeSelection(ImageModel(id: __designTimeSelection(UUID(), "#6913.[2].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[3].arg[1].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value.[0].arg[0].value"), imageFile: __designTimeSelection(item, "#6913.[2].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[3].arg[1].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value.[0].arg[1].value")), "#6913.[2].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[3].arg[1].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value.[0]")
            }, "#6913.[2].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[3].arg[1].value.[0].modifier[0].arg[0].value")), "#6913.[2].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[3].arg[1].value.[0]")
            //shareable.image = items.first ?? Image("CSPodcast")
            return __designTimeBoolean("#6913.[2].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[3].arg[1].value.[1]", fallback: true)
          }, "#6913.[2].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
      }
      .padding(), "#6913.[2].[5].property.[0].[0].arg[0].value.[0]")
      __designTimeSelection(LazyVGrid (columns: __designTimeSelection(displayGrid, "#6913.[2].[5].property.[0].[0].arg[0].value.[1].arg[0].value")) {
        __designTimeSelection(ForEach(__designTimeSelection(imageArray, "#6913.[2].[5].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value"), id: \.self) { item in
          __designTimeSelection(item.imageFile
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width:__designTimeInteger("#6913.[2].[5].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value", fallback: 100), height: __designTimeInteger("#6913.[2].[5].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[1].value", fallback: 100)), "#6913.[2].[5].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0]")
        }, "#6913.[2].[5].property.[0].[0].arg[0].value.[1].arg[1].value.[0]")
      }, "#6913.[2].[5].property.[0].[0].arg[0].value.[1]")
      __designTimeSelection(Spacer(), "#6913.[2].[5].property.[0].[0].arg[0].value.[2]")
      __designTimeSelection(HStack {
        __designTimeSelection(ShareLink(item: __designTimeSelection(shareable, "#6913.[2].[5].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value"),
                  preview: __designTimeSelection(SharePreview(__designTimeString("#6913.[2].[5].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[1].value.arg[0].value", fallback: "Some text"), image: __designTimeSelection(shareable.image, "#6913.[2].[5].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[1].value.arg[1].value")), "#6913.[2].[5].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[1].value"))
        .frame(width: __designTimeInteger("#6913.[2].[5].property.[0].[0].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[0].value", fallback: 150), height: __designTimeInteger("#6913.[2].[5].property.[0].[0].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[1].value", fallback: 36)), "#6913.[2].[5].property.[0].[0].arg[0].value.[3].arg[0].value.[0]")
        __designTimeSelection(Button(action: {imageArray = []}, label: {
          __designTimeSelection(Image(systemName: __designTimeString("#6913.[2].[5].property.[0].[0].arg[0].value.[3].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "trash.fill")), "#6913.[2].[5].property.[0].[0].arg[0].value.[3].arg[0].value.[1].arg[1].value.[0]")
        }), "#6913.[2].[5].property.[0].[0].arg[0].value.[3].arg[0].value.[1]")
      }, "#6913.[2].[5].property.[0].[0].arg[0].value.[3]")
    }
    .frame(width: __designTimeInteger("#6913.[2].[5].property.[0].[0].modifier[0].arg[0].value", fallback: 400), height: __designTimeInteger("#6913.[2].[5].property.[0].[0].modifier[0].arg[1].value", fallback: 400)), "#6913.[2].[5].property.[0].[0]")

  
#sourceLocation()
    }
}

import struct TransferableTest.ContentView
import struct TransferableTest.ContentView_Previews
import struct TransferableTest.ShareablePhoto

