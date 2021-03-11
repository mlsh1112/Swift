//
//  ViewController.swift
//  Navigation
//
//  Created by 이서현 on 10/01/2020.
//  Copyright © 2020 이서현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        
        if segue.identifier=="editButton"{
            editViewController.textWayValue="segue : use button"
        }else if segue.identifier=="editBarButton"{
            editViewController.textWayValue="segue : use Bar button"
            
        }
    }

}

