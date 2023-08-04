//
//  SixthTableViewCell.swift
//  Netflix_demo
//
//  Created by Neosoft on 04/08/23.
//

import UIKit

class SixthTableViewCell: UITableViewCell, UICollectionViewDataSource {
    
    var arr3 = ["lord of the rings","Joker (2019 Movie)","theriseofskywalker","Godzilla"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr3.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionviewcell3", for: indexPath) as! ThirdCollectionViewCell
        let lbl = arr3[indexPath.row]
        cell.imagevie.image = UIImage(named: lbl)
        return cell
    }
    

    @IBOutlet weak var collectionview3: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionview3.dataSource = self
        collectionview3.dataSource = self
        // Initialization cod
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
