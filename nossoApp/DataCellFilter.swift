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
    @IBOutlet weak var selectView: UIView!
    
    var data: DataModelFilter! {
        didSet {
            restriction.text = data.restrictionName
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        selectView.layer.cornerRadius = 15
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if selected {
            selectView.backgroundColor = UIColor(red: 202/255, green: 126/255, blue: 82/255, alpha: 1)
        } else {
            selectView.backgroundColor = UIColor(red: 248/255, green: 165/255, blue: 98/255, alpha: 1)
        }
    }
    
}
