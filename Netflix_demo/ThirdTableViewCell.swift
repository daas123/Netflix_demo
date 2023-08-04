//
//  ThirdTableViewCell.swift
//  Netflix_demo
//
//  Created by Neosoft on 04/08/23.
//

import UIKit

class ThirdTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    var movies1 = [
        details(label: "Godzilla", img: "Godzilla" ),
        details(label: "Avengers Endgame", img: "Avengers Endgame"),
        details(label: "jocker", img: "jocker"),
        details(label: "Joker (2019 Movie)", img: "Joker (2019 Movie)"),
        details(label: "lord of the rings", img: "lord of the rings"),
    ]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionviewcell1", for: indexPath) as! FirstCollectionViewCell
        var lbl = movies1[indexPath.row]
        cell.labelcollectionview.text = lbl.label
        cell.imagecollectionview.image = UIImage(named: lbl.img)
        return cell
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
