//
//  FirstCollectionViewCell.swift
//  Netflix_demo
//
//  Created by Neosoft on 04/08/23.
//

import UIKit

class FirstCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var imagecollectionview: UIImageView!
    
    @IBOutlet weak var labelcollectionview: UILabel!
    
    @IBOutlet weak var viewref: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        imagecollectionview.layer.cornerRadius = 5
        viewref.layer.cornerRadius = 5
    }
    
}
