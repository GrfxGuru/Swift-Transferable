//
//  GridImageItem.swift
//  TransferableTest
//
//  Created by Peter Witham on 5/26/23.
//

import SwiftUI

struct GridImageItem: View {

  @State var theImage: ImageModel
  @State var isSelected = false
  @Binding var selectedImageArray:[ImageModel]
  @Binding var imagesToShare:[ShareablePhoto]

    var body: some View {
      VStack {
        theImage.imageFile
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width:100, height: 100)
          .background(isSelected ? Color.purple : Color.white)
          .onTapGesture {
            isSelected = !isSelected
            selectedImageArray.append(theImage)
            let newImageToAdd = ShareablePhoto(image: theImage.imageFile, caption: "Here's the caption")
            imagesToShare.append(newImageToAdd)
          }
          .border(isSelected ? Color.green:Color.white, width: isSelected ? 5:0)
      }
    }
}

struct GridImageItem_Previews: PreviewProvider {
    static var previews: some View {
      let previewImage = ImageModel(id: UUID(), imageFile: Image("DropTarget"))
      GridImageItem(theImage: previewImage, selectedImageArray: .constant([previewImage]), imagesToShare: .constant([]))
    }
}
