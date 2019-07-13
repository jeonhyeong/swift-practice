//
//  TableViewCell.swift
//  CustomCell
//
//  Created by 조전형 on 2019/04/30.
//  Copyright © 2019 cho. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        imgView.layer.cornerRadius = 50.0
        imgView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
