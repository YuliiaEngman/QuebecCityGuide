//
//  Alerts.swift
//  New-Year-in-Quebec-City
//
//  Created by Yuliia Engman on 1/7/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//


import UIKit

extension UIViewController {
  func showAlert(title: String, message: String, completion: ((UIAlertAction) -> Void)? = nil) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let okAction = UIAlertAction(title: "Ok", style: .default, handler: completion)
    alertController.addAction(okAction)
    present(alertController, animated: true, completion: nil)
  }
}
