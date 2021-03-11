//
//  VCWrite.swift
//  JustOneLine
//
//  Created by 이서현 on 22/01/2020.
//  Copyright © 2020 이서현. All rights reserved.
//

import UIKit

class VCWrite: UIViewController {

    @IBAction func btnClose(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func clickBtnClose(_ sender: UIButton) {
        self.closeWrite()
    }
    func closeWrite(){
        let vc=self.presentingViewController
        vc?.dismiss(animated: true, completion: nil)
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
