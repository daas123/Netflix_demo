//
//  ViewController.swift
//  Netflix_demo
//
//  Created by Neosoft on 04/08/23.
//

import UIKit

class ViewController: UIViewController {

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
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath ) as! detailTableViewCell
            cell.imageview.image = UIImage(named: "icon")
            cell.name.text = "Saad Vadanagara"
            cell.downlocon.image = UIImage(systemName: "chevron.down")
            return cell
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath ) as! detailTableViewCell
            cell.imageview.image = UIImage(systemName: "circle")
            cell.name.text = "Saad Vadanagara"
            cell.downlocon.image = UIImage(systemName: "chevron.down")
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0
        {
            return 200
        }
        return 80
    }
    
}
