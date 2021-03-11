//
//  EditViewController.swift
//  Navigation
//
//  Created by 이서현 on 10/01/2020.
//  Copyright © 2020 이서현. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {
    var textWayValue: String = ""
    
    @IBOutlet weak var lblWay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblWay.text=textWayValue
    }
    
    @IBAction func btnDone(_ sender: UIButton) {
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
