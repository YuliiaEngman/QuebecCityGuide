//
//  FreeDetailViewController.swift
//  Quebec3
//
//  Created by Yuliia Engman on 1/5/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import UIKit
import SafariServices

class FreeDetailViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var sightseeingLabel: UILabel!
    @IBOutlet weak var sightseeingTextDescription: UITextView!
    
    @IBOutlet weak var webButton: UIButton!
    
    var freesightseeing: FreeSightseeing?
    var budgetSightseeing: BudgetSightseeing?
    var luxurySightseeing: LuxurySightseeing?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        if let freeSightseeing = freesightseeing {
        image.image = UIImage(named: freeSightseeing.image)
        sightseeingLabel.text = freeSightseeing.name
        sightseeingTextDescription.text = freeSightseeing.description
        } else if let budgetSightseeing = budgetSightseeing {
            image.image = UIImage(named: budgetSightseeing.image)
            sightseeingLabel.text = budgetSightseeing.name
            sightseeingTextDescription.text = budgetSightseeing.description
        }
    }
    
    @IBAction func actionWebButton(_ sender: Any) {
        
        if let freeSightseeing = freesightseeing {
        guard let url = URL(string: freesightseeing?.url ?? "") else {
            return
            }
            let safariVC = SFSafariViewController(url: url)
            present(safariVC, animated: true, completion: nil)
            safariVC.delegate = self
            
        } else if let budgetSightseeing = budgetSightseeing {
            guard let url = URL(string: budgetSightseeing.url) else {
                return
            }
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true, completion: nil)
        safariVC.delegate = self
    }
    }
}

extension FreeDetailViewController: SFSafariViewControllerDelegate {
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        controller.dismiss(animated: true, completion: nil)
    }
}


