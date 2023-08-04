//
//  FiftTableViewCell.swift
//  Netflix_demo
//
//  Created by Neosoft on 04/08/23.
//

import UIKit

class FiftTableViewCell: UITableViewCell, UICollectionViewDelegate , UICollectionViewDataSource {
    
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionviewcell2", for: indexPath) as! SecondCollectionViewCell
        let lbl = movies1[indexPath.row]
        cell.collectviewimage.image = UIImage(named: lbl.img)
        return cell
    }
    
    
    @IBOutlet weak var collectionview2: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionview2.delegate = self
        collectionview2.dataSource = self
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
