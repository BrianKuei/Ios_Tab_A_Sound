//
//  ViewController.swift
//  Tab A Sound
//
//  Created by Sunbu on 2019/5/2.
//  Copyright © 2019 Sunbu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer : AVAudioPlayer?

    let soundArr = ["Sound1","Sound2","Sound3","Sound4","Sound5"]
    
    //var soundFileName : String = ""
  
    @IBAction func buttonPress(_ sender: UIButton) {
//        print(sender.tag)
        
        let soundFileName : String = soundArr[sender.tag - 1]
        
        
        playSound(fileName:soundFileName)
        
    }

    func playSound(fileName : String){
        let url = Bundle.main.url(forResource: "Sound/\(fileName)", withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
        }catch {
            print("Play error!")
        }
        
        audioPlayer?.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

