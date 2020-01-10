//
//  ViewController.swift
//  Quebec3
//
//  Created by Yuliia Engman on 1/4/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        snowDribbbleBalls()
        // Do any additional setup after loading the view.
    }
    
    func snowDribbbleBalls() {
        let emitter = Emitter.get(with: UIImage(named: "snow-particle.png")!)
        emitter.emitterPosition = CGPoint(x: view.frame.width / 2, y: 0) // position where snow starts
        // now making that snow comes from of the width of the top
        emitter.emitterSize = CGSize(width: view.frame.width, height: 2)
        view.layer.addSublayer(emitter)
    }


}

