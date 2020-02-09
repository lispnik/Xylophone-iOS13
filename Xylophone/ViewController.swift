//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
        
    @IBAction func onNote(_ sender: UIButton) {
        sender.backgroundColor = sender.backgroundColor?.withAlphaComponent(0.5)
        playSound(note: sender.currentTitle!)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2, execute: {
            sender.backgroundColor = sender.backgroundColor?.withAlphaComponent(1.0)
        })
    }
    
    var player: AVAudioPlayer!
    
    func playSound(note: String) {
        let url = Bundle.main.url(forResource: note, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

