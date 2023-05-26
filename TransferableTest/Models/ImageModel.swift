//
//  imageModel.swift
//  TransferableTest
//
//  Created by Peter Witham on 5/23/23.
//

import Foundation
import SwiftUI

struct ImageModel: Hashable {
  var id: UUID
  var imageFile: Image

  func hash(into hasher: inout Hasher) { hasher.combine(id) }
}
