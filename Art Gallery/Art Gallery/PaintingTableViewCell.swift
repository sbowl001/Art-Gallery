//
//  PaintingTableViewCell.swift
//  Art Gallery
//
//  Created by Stephanie Bowles on 5/5/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func likeButtonWasTapped(on cell: PaintingTableViewCell)  //on versus for?
}
class PaintingTableViewCell: UITableViewCell {


  
    @IBOutlet weak var images: UIImageView!
    
    @IBOutlet weak var button: UIButton!
    //he view controller is going to pass a Painting object to the cell in order for the cell to know what information to display (like the image and what the button's title should be). Create a painting variable that holds a Painting?.
    
    var painting : Painting? {
        //        Add a didSet property observer to the painting variable, and call updateViews() in it.
        didSet {
            updateViews()
        }
    }
    
   weak var delegate: PaintingTableViewCellDelegate?
    func updateViews() {
        //        Create a function called updateViews(). This function should unwrap the painting variable, and put its image in the image view, and set the button's title according to whether the painting is liked or not.
        guard let painting = painting else {return}
        images.image = painting.image
        if(painting.isLiked) {
            button.setTitle("Unlike", for: .normal)
        } else {
            button.setTitle("Like", for: .normal)
        }
        
//            isViewLoaded else {return}
//
        
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        self.delegate?.likeButtonWasTapped(on: self)
  
    }
    
}
