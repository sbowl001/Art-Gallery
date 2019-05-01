//
//  PaintingModel.swift
//  Art Gallery
//
//  Created by Stephanie Bowles on 5/1/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import UIKit

//wouldn't this technically be the painting controller?
class PaintingModel: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    /*In PaintingsModel.swift, add the three core table delegate methods. In numberOfSections, set your weak tableView property.
     
     Establish a reuseIdentifier property called cell and name the prototype cell in Interface Builder. */
    
    weak var tableView : PaintingViewController!
    
    var paintings : [Painting] = []
    
    
    func createPainting(with liking: Bool){
        let painting = Painting(liking: liking)
        paintings.append(painting)
        print(paintings)
        
//Build an initializer that uses the numbers 1 through 12 to load assets into an Image Array.
  
}
}
