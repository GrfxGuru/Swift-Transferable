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
      ZStack {
        theImage.imageFile
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width:100, height: 100)
          .onTapGesture {
            isSelected = !isSelected
            selectedImageArray.append(theImage)
            let newImageToAdd = ShareablePhoto(image: theImage.imageFile, caption: "Here's the caption")
            imagesToShare.append(newImageToAdd)
          }
        if (isSelected) {
          Image("GreenSelected")
            .frame(width: 100, height: 100)
            .onTapGesture {
              isSelected = !isSelected
              selectedImageArray.removeAll(where: { theImage.id == $0.id })
              imagesToShare = selectedImageArray.map({ ShareablePhoto(image: $0.imageFile, caption: "") })
            }
        }
      }
      .frame(width: 115, height: 115)
      .background(Color("GridItemBacking"))
      .border(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.0, brightness: 0.538)/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
    }.cornerRadius(10)
  }
}

struct GridImageItem_Previews: PreviewProvider {
  static var previews: some View {
    let previewImage = ImageModel(id: UUID(), imageFile: Image("DropTarget"))
    GridImageItem(theImage: previewImage, selectedImageArray: .constant([previewImage]), imagesToShare: .constant([]))
  }
}
