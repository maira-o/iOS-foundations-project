//
//  CustomTableViewCell.swift
//  nossoApp
//
//  Created by Michelle Lang Baratto on 14/11/17.
//  Copyright © 2017 Maíra . All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var imageRecipeCell: UIImageView!
    
    @IBOutlet weak var titleRecipeCell: UILabel!
    
    @IBOutlet weak var shortDescripitionCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
