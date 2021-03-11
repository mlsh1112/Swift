//
//  ViewController.swift
//  imageView
//
//  Created by 이서현 on 30/12/2019.
//  Copyright © 2019 이서현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var isZoom=false
    var imgOn: UIImage?
    var imgOff: UIImage?
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgOn=UIImage(named: "bulbON.png")
        imgOff=UIImage(named: "bulbOFF.png")
        
        imgView.image=imgOn
    }

    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale:CGFloat=2.0
        var newWidth:CGFloat, newHeight:CGFloat
        
        if(isZoom){
            newWidth=imgView.frame.width/scale
            newHeight=imgView.frame.height/scale
            imgView.frame.size=CGSize(width: newWidth, height: newHeight)
            btnResize.setTitle("확대", for: .normal)
        }
        else{
            newWidth=imgView.frame.width*scale
            newHeight=imgView.frame.height*scale
            imgView.frame.size=CGSize(width: newWidth, height: newHeight)
            btnResize.setTitle("축소", for: .normal)
            
        }
        isZoom = !isZoom
    }
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        
        if sender.isOn{
            imgView.image=imgOn
        }
        else{
            imgView.image=imgOff
        }
    }
    
}

