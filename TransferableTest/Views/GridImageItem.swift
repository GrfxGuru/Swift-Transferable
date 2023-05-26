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
        Button (action: {
          isSelected = !isSelected
          selectedImageArray.append(theImage)
          let newImageToAdd = ShareablePhoto(image: theImage.imageFile, caption: "Here's the caption")
          imagesToShare.append(newImageToAdd)
        }, label: {
          Text("Select")
        })
        .background(isSelected ? Color.white : Color.purple)
      }
    }
}

//struct GridImageItem_Previews: PreviewProvider {
//    static var previews: some View {
//      let previewImage = ImageModel(id: UUID(), imageFile: Image("DropTarget"))
//      var imagesToShare:[ShareablePhoto] = [ShareablePhoto(image: Image("DropTarget"), caption: "Here's the caption")]
//      let selectedImageArray:[ImageModel] = []
//      GridImageItem(theImage: previewImage, selectedImageArray: selectedImageArray, imagesToShare: imagesToShare)
//    }
//}
