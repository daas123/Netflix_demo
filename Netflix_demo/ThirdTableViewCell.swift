//
//  ThirdTableViewCell.swift
//  Netflix_demo
//
//  Created by Neosoft on 04/08/23.
//

import UIKit

protocol CategoryRowDelegate:class {
    func cellTapped(_ label:String , _ img:String , _ des:String)
}
class ThirdTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    weak var delegate:CategoryRowDelegate?
    
    
    var movies1 = [
        details(label: "Godzilla", img: "Godzilla", des: "dfjdsf dsvdsjb" ),
        details(label: "Avengers Endgame", img: "Avengers Endgame" ,des: "fondudbfuodsbf"),
        details(label: "jocker", img: "jocker" , des: "dfjdsf dsvdsjb"),
        details(label: "Joker (2019 Movie)", img: "Joker (2019 Movie)" , des: "dfjdsf dsvdsjb"),
        details(label: "lord of the rings", img: "lord of the rings" , des: "dfjdsf dsvdsjb"),
    ]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionviewcell1", for: indexPath) as! FirstCollectionViewCell
        let lbl = movies1[indexPath.row]
        cell.labelcollectionview.text = lbl.label
        cell.imagecollectionview.image = UIImage(named: lbl.img)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.cellTapped(movies1[indexPath.row].label , movies1[indexPath.row].img , movies1[indexPath.row].des)
    }
    @IBOutlet weak var collectioview: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectioview.dataSource = self
        collectioview.delegate = self
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
