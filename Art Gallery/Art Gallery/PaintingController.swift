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
        self.loadPaintingsFromAssets()
    }
    
    func loadPaintingsFromAssets() {
        var i : Int = 1
        while(i <= 12) {
            let paintingName = "Image\(i)"
            guard let image = UIImage(named: paintingName) else {return}
            let painting = Painting(image: image, isLiked: false)
            paintings.append(painting)
//        for i in 1...12 {
//            paintings.append(Painting(image: UIImage(image: "Image\(i)")!))
            i += 1
        }
        
        }
        /*
         Create a for-in loop that loops 12 times using a range of numbers. (1...12).
         In each iteration of the loop, create a string that will match the name of the images in the assets folder. ("Image" plus the number you have from the range in this iteration of the loop).
         Using this string, you can use the UIImage(named: String) initializer to get the image (You will have to import UIKit in this file as well). It will look in the assets folder for the image matching the string you give it. Be aware that this initializer will return you a UIImage?, so handle the optional accordingly.
         Initialize a new painting object with the image you just got, and append it to the paintings variable.
         In the initializer of this PaintingController, call this function.
    */
        
    
    /*The last method you need to add to this model controller is one that toggles the value of a Painting's isLiked property from true to false, and vice-versa. This will be called when the user taps on the button to like/unlike a painting. Call the function toggleIsLiked(for painting: Painting).
  */
    func toogleIsLiked(painting: Painting) {
//        painting.isLiked = !painting.isLiked
    }
    
}




////wouldn't this technically be the painting controller?
//class PaintingModel: NSObject, UITableViewDataSource, UITableViewDelegate {
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        <#code#>
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
//    /*In PaintingsModel.swift, add the three core table delegate methods. In numberOfSections, set your weak tableView property.
//
//     Establish a reuseIdentifier property called cell and name the prototype cell in Interface Builder. */
//
//    weak var tableView : PaintingViewController!
//
//    var paintings : [Painting] = []
//
//
//    func createPainting(with liking: Bool){
//        let painting = Painting(liking: liking)
//        paintings.append(painting)
//        print(paintings)
//
////Build an initializer that uses the numbers 1 through 12 to load assets into an Image Array.
//
//}
//}
