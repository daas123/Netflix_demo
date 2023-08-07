//
//  FiftTableViewCell.swift
//  Netflix_demo
//
//  Created by Neosoft on 04/08/23.
//

import UIKit

class FiftTableViewCell: UITableViewCell, UICollectionViewDelegate , UICollectionViewDataSource {
    weak var delegate:CategoryRowDelegate?
    var movies1 = [
           details(label: "Godzilla", img: "Godzilla",  des: "dfjdsf dsvdsjb"),
           details(label: "Avengers Endgame", img: "Avengers Endgame",  des: "dfjdsf dsvdsjb"),
           details(label: "jocker", img: "jocker",  des: "dfjdsf dsvdsjb"),
           details(label: "Joker (2019 Movie)", img: "Joker (2019 Movie)", des: "dfjdsf dsvdsjb"),
           details(label: "lord of the rings", img: "lord of the rings", des: "dfjdsf dsvdsjb"),
       ]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionviewcell2", for: indexPath) as! SecondCollectionViewCell
        let lbl = movies1[indexPath.row]
        cell.btnShare.tag = indexPath.row
        cell.btnShare.addTarget(self, action: #selector(pushpage(_:)), for: .touchUpInside)
        cell.collectviewimage.image = UIImage(named: lbl.img)
        return cell
    }

    @objc func pushpage(_ sender:UIButton){
        delegate?.cellTapped(movies1[sender.tag].label, movies1[sender.tag].img, movies1[sender.tag].des)
    }
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
//    }
    
    @IBOutlet weak var collectionview2: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionview2.delegate = self
        collectionview2.dataSource = self
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
//    @IBAction func ButtonAction(_ sender: UIButton) {
//        
//    }
    
}
