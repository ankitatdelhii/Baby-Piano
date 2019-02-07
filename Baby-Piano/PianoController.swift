//
//  ViewController.swift
//  Baby-Piano
//
//  Created by Ankit Saxena on 08/02/19.
//  Copyright © 2019 Ankit Saxena. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // All buttons linked to single Action Outlet
    @IBAction func pianoButtonPressed(_ sender: UIButton) {
        print(sender.tag)
        playSound(with: sender.tag)
    }
    
    
    func playSound(with noteName : Int){
        if let soundURL = Bundle.main.url(forResource: "note\(noteName)", withExtension: ".wav"){
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
                try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, mode: AVAudioSession.Mode.default)
            }
            catch{
                print(error)
            }
            audioPlayer.play()
        }
        
    }
    
}

