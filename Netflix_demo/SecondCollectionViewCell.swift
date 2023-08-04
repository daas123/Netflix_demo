//
//  SecondCollectionViewCell.swift
//  Netflix_demo
//
//  Created by Neosoft on 04/08/23.
//

import UIKit

class SecondCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var viewlbl: UIView!
    @IBOutlet weak var collectviewimage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        viewlbl.layer.cornerRadius = 5
        collectviewimage.layer.cornerRadius = 5
    }
}
