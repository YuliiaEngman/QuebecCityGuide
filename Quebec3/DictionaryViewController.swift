//
//  DictionaryViewController.swift
//  New-Year-in-Quebec-City
//
//  Created by Yuliia Engman on 1/8/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import UIKit
import AVFoundation

class DictionaryViewController: UIViewController, AVAudioPlayerDelegate {
    
    @IBOutlet weak var bonjourButton: UIButton!
    
    
    //var audioPlayer = AVAudioPlayer()
    var objPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        objPlayer?.delegate = self
    }
    
  func playAudioFile() {
        guard let url = Bundle.main.url(forResource: "Bonj", withExtension: "mp3") else {
            print("can't find resource")
            return
    }

        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
            try AVAudioSession.sharedInstance().setActive(true)

            // For iOS 11
            objPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.m4a.rawValue)

            // For iOS versions < 11
           // objPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3)

            guard let aPlayer = objPlayer else { return }
            aPlayer.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }

    @IBAction func bonlourActionButton(_ sender: UIButton) {
        playAudioFile()
     
    }
}


