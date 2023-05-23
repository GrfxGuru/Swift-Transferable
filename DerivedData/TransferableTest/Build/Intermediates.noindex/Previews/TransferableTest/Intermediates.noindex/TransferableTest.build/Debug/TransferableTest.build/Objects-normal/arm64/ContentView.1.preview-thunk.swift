@_private(sourceFile: "ContentView.swift") import TransferableTest
import UniformTypeIdentifiers
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/peter/Developer/Xcode/TransferableTest/TransferableTest/ContentView.swift", line: 61)
    ContentView()
  
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/peter/Developer/Xcode/TransferableTest/TransferableTest/ContentView.swift", line: 20)
    VStack {
      HStack () {
        imageFile
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width:__designTimeInteger("#6913.[2].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 100), height: __designTimeInteger("#6913.[2].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[1].value", fallback: 100))
          .dropDestination(for: Image.self) { items, location in
            imageArray.append(contentsOf: items.map { item in
              return ImageModel(id: UUID(), imageFile: item)
            })
            //shareable.image = items.first ?? Image("CSPodcast")
            return __designTimeBoolean("#6913.[2].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[3].arg[1].value.[1]", fallback: true)
          }
      }
      .padding()
      LazyVGrid (columns: displayGrid) {
        ForEach(imageArray, id: \.self) { item in
          item.imageFile
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width:__designTimeInteger("#6913.[2].[5].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value", fallback: 100), height: __designTimeInteger("#6913.[2].[5].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[1].value", fallback: 100))
        }
      }
      Spacer()
      HStack {
        ShareLink(item: shareable,
                  preview: SharePreview(__designTimeString("#6913.[2].[5].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[1].value.arg[0].value", fallback: "Some text"), image: shareable.image))
        .frame(width: __designTimeInteger("#6913.[2].[5].property.[0].[0].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[0].value", fallback: 150), height: __designTimeInteger("#6913.[2].[5].property.[0].[0].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[1].value", fallback: 36))
        Button(action: {imageArray = []}, label: {
          Image(systemName: __designTimeString("#6913.[2].[5].property.[0].[0].arg[0].value.[3].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "trash.fill"))
        })
      }
    }
    .frame(width: __designTimeInteger("#6913.[2].[5].property.[0].[0].modifier[0].arg[0].value", fallback: 400), height: __designTimeInteger("#6913.[2].[5].property.[0].[0].modifier[0].arg[1].value", fallback: 400))

  
#sourceLocation()
    }
}

import struct TransferableTest.ContentView
import struct TransferableTest.ContentView_Previews
import struct TransferableTest.ShareablePhoto

