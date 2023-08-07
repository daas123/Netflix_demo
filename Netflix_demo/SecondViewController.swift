//
//  SecondViewController.swift
//  Netflix_demo
//
//  Created by Neosoft on 07/08/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondPageDescription: UILabel!
    @IBOutlet weak var secondPageheading: UILabel!
    @IBOutlet weak var secondpageimage: UIImageView!
    
    var heading : String = ""
    var pageimage : String = ""
    var desc : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        secondpageimage.image = UIImage(named: heading)
        secondPageheading.text = heading
        secondPageDescription.text = desc

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
