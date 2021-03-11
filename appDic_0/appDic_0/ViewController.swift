//
//  ViewController.swift
//  appDic_0
//
//  Created by 이서현 on 30/01/2020.
//  Copyright © 2020 이서현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title="Main"
    }

    @IBAction func btnMenu(_ sender: UIBarButtonItem) {
        let MenuAlert=UIAlertController(title: "Menu", message: nil, preferredStyle: .actionSheet)
               let helpAction=UIAlertAction(title: "도움말, 학습원리", style: .default, handler: ((UIAlertAction) -> Void)?{_ in
                guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "Help") else{
                    return
                }
                uvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
                self.present(uvc, animated: true)
               })
        
               let reviewAction=UIAlertAction(title: "리뷰 작성하기", style: .default, handler: nil)
               let setAction=UIAlertAction(title: "설정(진도, 반복)", style: .default, handler: nil)
               let recoAction=UIAlertAction(title: "친구에게 추천받기", style: .default, handler: nil)

               
               MenuAlert.addAction(helpAction)
               MenuAlert.addAction(reviewAction)
               MenuAlert.addAction(setAction)
               MenuAlert.addAction(recoAction)
               MenuAlert.addAction(UIAlertAction(title: "취소", style: .cancel, handler: { (_) in
                          print("User click Dismiss button")
                      }))
               
               present(MenuAlert, animated: true, completion: nil)
           
    }
    
}

