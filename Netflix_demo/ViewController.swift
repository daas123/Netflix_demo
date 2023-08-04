//
//  ViewController.swift
//  Netflix_demo
//
//  Created by Neosoft on 04/08/23.
//

import UIKit

struct details{
    var label:String
    var img: String
}

class ViewController: UIViewController {
    
    // Array for notification and bellicon
    var arr = [
        details(label: "Notification", img: "bellicon"),
        details(label: "Download", img: "download")
    
    ]
    
    //Array for first collection view
    var movies1 = [
        details(label: "Godzilla", img: "Godzilla" ),
        details(label: "Avengers Endgame", img: "Avengers Endgame"),
        details(label: "jocker", img: "jocker"),
        details(label: "Joker (2019 Movie)", img: "Joker (2019 Movie)"),
        details(label: "lord of the rings", img: "lord of the rings"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
               
        let rightItem1 = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: nil)
        let rightItem2 = UIBarButtonItem(barButtonSystemItem:  .action, target: self, action: nil)
        let rightItem3 = UIBarButtonItem(barButtonSystemItem:  .organize, target: self, action: nil)
                 
               
        rightItem1.tintColor = UIColor.white
        rightItem2.tintColor = UIColor.white
        rightItem3.tintColor = UIColor.white
        

        navigationItem.title = "My Netflix"
//
//               navigationItem.leftBarButtonItems = [leftItem1, leftItem2]
        navigationItem.rightBarButtonItems = [rightItem3,rightItem1,rightItem2]
        
    }


}

extension ViewController : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath ) as! detailTableViewCell
            cell.imageview.image = UIImage(named: "icon")
            cell.name.text = "Saad Vadanagara"
            cell.downlocon.image = UIImage(systemName: "chevron.down")
            return cell
        }
        else if indexPath.row == 1 || indexPath.row == 2
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath ) as! SecondTableViewCell
            cell.secondcelllabel.text = arr[indexPath.row-1].label
            cell.secondrowicon.image = UIImage(named: arr[indexPath.row-1].img)
            cell.secondCellRightArrow.image = UIImage(named: "chevron.right")
            return cell
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath ) as! ThirdTableViewCell
            cell.collectioview.tag = indexPath.section
            return cell
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 180
        }else if indexPath.row == 1 || indexPath.row == 2{
            return 45
        }else{
            return 191
        }
        
    }
    
}
