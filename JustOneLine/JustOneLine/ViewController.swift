//
//  ViewController.swift
//  JustOneLine
//
//  Created by 이서현 on 14/01/2020.
//  Copyright © 2020 이서현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var btnMenu: UIButton!
    @IBOutlet var btnSearch: UIButton!
    
    @IBOutlet var btnWrite: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openWrite(_ sender: UIButton) {
         if let uvc = self.storyboard?.instantiateViewController(withIdentifier: "VCWrite")as? VCWrite{
                    uvc.modalTransitionStyle=UIModalTransitionStyle.crossDissolve
                    uvc.modalPresentationStyle = .overCurrentContext
                    self.present(uvc,animated: true, completion: nil)
                }
    }
    
}

