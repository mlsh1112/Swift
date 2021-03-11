//
//  ViewController.swift
//  DatePicker
//
//  Created by 이서현 on 02/01/2020.
//  Copyright © 2020 이서현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector:Selector=#selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    var alarmTime: String?
    var alarmflag=false
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat="yyyy-MM-dd HH:mm:ss EEE"
        lblPickerTime.text="선택시간: "+formatter.string(from: datePickerView.date)
    
        formatter.dateFormat="hh:mm aaa"
        alarmTime = formatter.string(from: datePickerView.date)
        
    }
    @objc func updateTime(){
        let date = NSDate()
        let formatter=DateFormatter()
        formatter.dateFormat="yyyy-MM-dd HH:mm:ss EEE"
        lblCurrentTime.text="현재시간: "+formatter.string(from: date as Date)
        
              formatter.dateFormat="hh:mm aaa"
              let currentTime = formatter.string(from: date as Date)
              
              if(alarmTime == currentTime){
                view.backgroundColor = UIColor.red
                if !alarmflag{
                let alarmOn = UIAlertController(title: "알람", message: "설정된 시간입니다.", preferredStyle: UIAlertController.Style.alert)
                let OnAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
                alarmOn.addAction(OnAction)
                present(alarmOn,animated: true,completion: nil)
                    alarmflag=true
              }
              }
                
              else{
                alarmflag=false
                    view.backgroundColor = UIColor.white
              }
        
              
    }
}
