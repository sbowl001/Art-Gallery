//
//  PaintingViewController.swift
//  Art Gallery
//
//  Created by Stephanie Bowles on 5/1/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    func likeButtonWasTapped(for cell: PaintingTableViewCell) {
        //        In order to accomplish this, you will need to get the IndexPath of the cell parameter. (Hint: tableView.indexPath(for: UITableViewCell)
//        Create a constant for the painting that the user just liked/unliked. You may get the Painting by either using the cell parameter's painting property or using the IndexPath you just got and using it with the view controller's paintingController's array of paintings.
//        Call the paintingController's toggleIsLiked(for: Painting) function.
//        At this point, the painting has been successfully been liked or unliked. However, that change won't be displayed to the user on the cell. You'll need to reload the cell so that it will re-call the updateViews() function and set the button's text according to the new isLiked value of the painting. Do this by calling tableView.reloadRows(at: [IndexPath], with: UITableViewRowAnimation). Pass in the IndexPath you got, and choose an animation enum case. Feel free to see how different cases change way the cell gets reloaded.<#code#>
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Painting Images", for: indexPath)
        
        guard let paintingCell = cell as? PaintingTableViewCell else {return cell}
        
        let painting = paintingController.paintings[indexPath.row]
        paintingCell.painting = painting
        
//cell.delegate = self
        return cell
    }
    
    
    let paintingController = PaintingController()
    
    @IBOutlet weak var paintingTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.paintingTableView.dataSource = self
        
    
    
    
    }

}


