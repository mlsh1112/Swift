//
//  ViewController.swift
//  imageGallary
//
//  Created by 이서현 on 02/01/2020.
//  Copyright © 2020 이서현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var maxnum=6
    var numImg=1
    
    @IBOutlet weak var imgGallary: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let imageName="1.jpg"
        imgGallary.image=UIImage(named: imageName)
    }

    @IBAction func btnPreImg(_ sender: UIButton) {
        numImg=numImg-1
        if(numImg<1){
            numImg=maxnum
        }
        let imageName=String(numImg)+".jpg"
        imgGallary.image=UIImage(named: imageName)
    }
    
    @IBAction func btnNextImg(_ sender: UIButton) {
        numImg=numImg+1
        if(numImg>maxnum){
            numImg=1
        }
        
        let imageName=String(numImg)+".jpg"
               imgGallary.image=UIImage(named: imageName)
    }
}

