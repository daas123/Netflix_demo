//
//  ThirdTableViewCell.swift
//  Netflix_demo
//
//  Created by Neosoft on 04/08/23.
//

import UIKit

class ThirdTableViewCell: UITableViewCell {

    @IBOutlet weak var thirdcelllabel: UILabel!
    @IBOutlet weak var thirdcellimage: UIImageView!
    
    @IBOutlet weak var thirdcellright: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
