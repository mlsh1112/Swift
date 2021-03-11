//
//  ViewController.swift
//  sql
//
//  Created by 이서현 on 02/02/2020.
//  Copyright © 2020 이서현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    var databasePath=String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //파일찾기 유저 홈 위치
        let dirPath=NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        
        //Document/contacts.db라는 경로
        databasePath=docsDir.appending("/contact.db")
        print(databasePath)
        
        if !fileMgr.fileExists(atPath:databasePath){
            let contactDB=FMDatabase(path: databasePath)
            
            if contactDB.open(){
                let sql_stmt="CREATE TABLE IF NOT EXIST CONTACTS (ID INTEGER PRIMARY KEY AUTOINCREMENT, NAME TEXT, AGE INTEGER)"
                if !contactDB.executeStatements(sql_stmt){
                    print("Errror:contactDB open Fail, \(contactDB.lastError())")
                }
                contactDB.close()
                
            }else{
                print("Error:contactDB open Fail, \(contactDB.lastError)")
            }
        }else{
            print("contactDB is exist")
        }
    }
    
    @IBAction func saveBtn(_ sender: UIButton) {
        //DB접속
        let contactDB=FMDatabase(path:databasePath)
        if contactDB.open(){
            print("[Save to DB Name: \(nameTextField.text!) Age: \(ageTextField.text!)")
            let insertSQL="INSERT INTO CONTACTS (NAME, AGE) values ('\(nameTextField.text!)', '\(ageTextField.text!)')"
            print(insertSQL)
            let result=contactDB.executeUpdate(insertSQL,withArgumentsIn: [])
            if !result{
                resultLabel.text="Fail to add contact"
                print("Error: contactDB add Fail, \(contactDB.lastError())")
            }else{
                resultLabel.text="Success to add contact"
                nameTextField.text=""
                ageTextField.text=""
            }
        }else{
            print("Error: contactDB open fail, \(contactDB.lastErrorr())")
        }
    }
    
    @IBAction func findBtn(_ sender: UIButton) {
    }
    

}

