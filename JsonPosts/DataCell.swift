//
//  DataCell.swift
//  JsonPosts
//
//  Created by Anand Nimje on 12/09/18.
//  Copyright © 2018 Anand. All rights reserved.
//

import UIKit

class DataCell: UITableViewCell {
    
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            titleLabel.numberOfLines = 0
        }
    }
    @IBOutlet weak var bodyLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
