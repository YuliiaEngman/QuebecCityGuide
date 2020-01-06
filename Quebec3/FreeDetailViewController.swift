//
//  FreeDetailViewController.swift
//  Quebec3
//
//  Created by Yuliia Engman on 1/5/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import UIKit

class FreeDetailViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var sightseeingLabel: UILabel!
    @IBOutlet weak var sightseeingTextDescription: UITextView!
    
    var freesightseeing: FreeSightseeing?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        guard let freeSightseeing = freesightseeing else {
            fatalError("could not set freeSightseeing, check prepare for segue")
        }
        image.image = UIImage(named: freeSightseeing.image)
        sightseeingLabel.text = freeSightseeing.name
        sightseeingTextDescription.text = freeSightseeing.description
    }

}

//    var animal: ZooAnimal?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        updateUI()
//    }
//
//    func updateUI() {
//    guard let zooAnimal = animal else { // we basically using constant zooAnimal to unwrap our optional!!!
//    fatalError("couldn't set animal object, check prepare(for segue: )")
//    }
//        navigationItem.title = zooAnimal.name
//        animalImageView.image = UIImage(named: zooAnimal.imageNumber.description)
//        animalInfoTextView.text = zooAnimal.info
//        animalOrigin.text = zooAnimal.origin
//        animalClassificationLabel.text = zooAnimal.classification
//}
