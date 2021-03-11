//
//  ViewController.swift
//  appDic2
//
//  Created by 이서현 on 30/01/2020.
//  Copyright © 2020 이서현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnMoreMenu(_ sender: UIBarButtonItem) {
        let MenuAlert=UIAlertController(title: "Menu", message: nil, preferredStyle: .actionSheet)
        let helpAction=UIAlertAction(title: "도움말, 학습원리", style: .default, handler: ((UIAlertAction) -> Void)?{_ in
            let storyboard: UIStoryboard = UIStoryboard(name: "Help", bundle: nil)
            let nextView = storyboard.instantiateInitialViewController()
            self.present(nextView!, animated: true, completion: nil)
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

