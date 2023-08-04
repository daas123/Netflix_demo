//
//  ThirdCollectionViewCell.swift
//  Netflix_demo
//
//  Created by Neosoft on 04/08/23.
//

import UIKit

class ThirdCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imagevie: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        imagevie.layer.cornerRadius = 5
    }
}
