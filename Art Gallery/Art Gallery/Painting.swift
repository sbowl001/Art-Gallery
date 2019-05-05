//
//  Painting.swift
//  Art Gallery
//
//  Created by Stephanie Bowles on 5/1/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import Foundation
import UIKit

struct Painting {
    let image : UIImage
    var isLiked : Bool
    init (image: UIImage, isLiked: Bool = false) {
        self.image = image
        self.isLiked = false
    }
}
