//
//  SecondCollectionViewCell.swift
//  Netflix_demo
//
//  Created by Neosoft on 04/08/23.
//

import UIKit
protocol OnclickButtonDelegate:class {
    func ButtonTapped(_ label:String , _ img:String , _ des:String)
}
class SecondCollectionViewCell: UICollectionViewCell {
    weak var Buttondelegate:CategoryRowDelegate?
    
    @IBOutlet weak var viewlbl: UIView!
    @IBOutlet weak var collectviewimage: UIImageView!
    @IBOutlet weak var btnShare: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        viewlbl.layer.cornerRadius = 5
        collectviewimage.layer.cornerRadius = 5
    }
    
}
