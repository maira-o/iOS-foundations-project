//
//  DataCellFilter.swift
//  nossoApp
//
//  Created by Maíra  on 14/11/17.
//  Copyright © 2017 Maíra . All rights reserved.
//

import UIKit

class DataCellFilter: UITableViewCell {
    
    @IBOutlet weak var restriction: UILabel!
    
    var data: DataModelFilter! {
        didSet {
            restriction.text = data.restrictionName
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if selected {
            backgroundColor = .red
        } else {
            backgroundColor = .blue
        }
    }
    
}
