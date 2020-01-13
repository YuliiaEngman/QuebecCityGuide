//
//  ViewController.swift
//  Quebec3
//
//  Created by Yuliia Engman on 1/4/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import UIKit
import AVFoundation

class FirstViewController: UIViewController, AVAudioPlayerDelegate {
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    
    var objPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        snowDribbbleBalls()
        objPlayer?.delegate = self
        playAudioFile()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        objPlayer?.stop()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        objPlayer?.stop()
    }
    

//    - (void)viewWillDisappear:(BOOL)animated
//    {
//        [super viewWillDisappear:animated];
//        [audioPlayer stop]; // Or pause
//    }
    
    func snowDribbbleBalls() {
        let emitter = Emitter.get(with: UIImage(named: "snow-particle.png")!)
        emitter.emitterPosition = CGPoint(x: view.frame.width / 2, y: 0) // position where snow starts
        // now making that snow comes from of the width of the top
        emitter.emitterSize = CGSize(width: view.frame.width, height: 2)
        view.layer.addSublayer(emitter)
    }
    
    func playAudioFile() {
            guard let url = Bundle.main.url(forResource: "HappyNYCropped", withExtension: "mp3") else {
                print("can't find resource")
                return
        }
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
                try AVAudioSession.sharedInstance().setActive(true)
    
                objPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
    
                guard let aPlayer = objPlayer else { return }
                aPlayer.play()
                
                if (aPlayer.rate != 0) {
                    print("playing")
                } else {
                    print("not playing")
                }
    
            } catch let error {
                print(error.localizedDescription)
            }
        }
}

//func playAudioFile(with url: URL?) {
//    guard let url = url else {
//        print("can't find resource")
//        return
//}
//    do {
//        try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
//        try AVAudioSession.sharedInstance().setActive(true)
//
//        objPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
//
//        guard let aPlayer = objPlayer else { return }
//        aPlayer.play()
//
//        if (aPlayer.rate != 0) {
//            print("playing")
//        } else {
//            print("not playing")
//        }
//
//    } catch let error {
//        print("player error: \(error.localizedDescription)")
//    }
//}

