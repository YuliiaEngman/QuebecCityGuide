//
//  CreperiesDetailViewController.swift
//  Quebec3
//
//  Created by Yuliia Engman on 1/6/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import UIKit
import SafariServices

class CreperiesDetailViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    //@IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var creperieName: UILabel!
    
    @IBOutlet weak var priceRangeLabel: UILabel!
    
    @IBOutlet weak var yelpRatingLabel: UILabel!
    
    @IBOutlet weak var buttonWEBlabel: UIButton!
    
    
    
    
    var oneCreperie: Business?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        guard let oneCreperie = oneCreperie else {
            fatalError("could not get object from prepare for segue")
        }
        
        creperieName.text = oneCreperie.name
        priceRangeLabel.text = "Price: \(oneCreperie.price ?? "$")"
        yelpRatingLabel.text = "Rating on Yelp is \(oneCreperie.rating) ⭐️"
        
        let imageURL = oneCreperie.imageURL
        
        image.getImage(with: imageURL) {[weak self] result in switch result {
        case .failure:
            DispatchQueue.main.async {
        self?.image.image = UIImage(named: "Crapes.png")
            }
        case .success(let creperieImage):
            DispatchQueue.main.async {
                self?.image.image = creperieImage
            }
            }
            
        }
    
    }
    
    @IBAction func actionWEBbutton(_ sender: UIButton) {
        guard let url = URL(string: oneCreperie?.url ?? "") else {
            return
        }
        
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true, completion: nil)
        safariVC.delegate = self
    }
    
}

extension CreperiesDetailViewController: SFSafariViewControllerDelegate {
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        controller.dismiss(animated: true, completion: nil)
    }
}
