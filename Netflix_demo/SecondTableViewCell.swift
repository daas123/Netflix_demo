//
//  SecondTableViewCell.swift
//  Netflix_demo
//
//  Created by Neosoft on 04/08/23.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

    @IBOutlet weak var secondrowicon: UIImageView!
    
    @IBOutlet weak var secondcelllabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
