//
//  detailTableViewCell.swift
//  Netflix_demo
//
//  Created by Neosoft on 04/08/23.
//

import UIKit

class detailTableViewCell: UITableViewCell {
    

    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var downlocon: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
