//
//  ViewController.swift
//  Erick.P(Audio App)
//
//  Created by Erick P on 8/18/20.
//  Copyright © 2020 Erick P. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sound = Bundle.main.path(forResource:"guitar.wav", ofType: nil)

        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            
        } catch {
            print(error)
        }
    }
    @IBAction func pauseAudio(_ sender: Any) {
        audioPlayer.pause()
    }
    @IBAction func playAudio(_ sender: Any) {
        audioPlayer.play()
    }
    @IBAction func stopAudio(_ sender: Any) {
        audioPlayer.stop()
    }
}







