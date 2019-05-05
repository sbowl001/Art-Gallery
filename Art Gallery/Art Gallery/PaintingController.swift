//
//  PaintingModel.swift
//  Art Gallery
//
//  Created by Stephanie Bowles on 5/1/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    
    private (set) var paintings : [Painting] = []
    
    init() {
//        self.
        loadPaintingsFromAssets()
    }
    
    func loadPaintingsFromAssets() {
//        var i : Int = 1
//        while(i <= 12) {
        for i in 1...12 {
            let image: String = "Image\(i)"
            guard let UIImage = UIImage(named: image) else {return}
            let painting = Painting(image: UIImage)
            paintings.append(painting)
//        for i in 1...12 {
//            paintings.append(Painting(image: UIImage(image: "Image\(i)")!))
//            i += 1
        }
        
        }
        /*
     
         In the initializer of this PaintingController, call this function.
    */
        
    
    /*The last method you need to add to this model controller is one that toggles the value of a Painting's isLiked property from true to false, and vice-versa. This will be called when the user taps on the button to like/unlike a painting. Call the function toggleIsLiked(for painting: Painting).
  */
    func toggleIsLiked(painting: Painting) {
//        painting.isLiked = !painting.isLiked
    }
    
}





