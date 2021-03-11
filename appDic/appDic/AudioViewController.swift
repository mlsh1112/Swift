//
//  AudioViewController.swift
//  appDic
//
//  Created by 이서현 on 30/01/2020.
//  Copyright © 2020 이서현. All rights reserved.
//

import UIKit
import AVFoundation

class WordViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer:AVAudioPlayer!
    var audioFile:URL!
    var progressTimer:Timer!
    
    @IBOutlet var btnPlay: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        audioFile=Bundle.main.url(forResource: "Sicilian_Breeze", withExtension: "mp3")
        initPlay()
        
    }
    func initPlay(){
        do{
            audioPlayer=try AVAudioPlayer(contentsOf: audioFile)
        }catch let error as NSError{
            print("Error-initPlay:\(error)")
        }
        audioPlayer.delegate=self
        audioPlayer.prepareToPlay()
        btnPlay.isEnabled=true
    }
    
    @IBAction func btnPlay(_ sender: UIButton) {
        audioPlayer.play()
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
