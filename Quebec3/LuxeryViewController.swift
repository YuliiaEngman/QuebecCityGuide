//
//  LuxeryViewController.swift
//  Quebec3
//
//  Created by Yuliia Engman on 1/4/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import UIKit

class LuxuryViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var luxurySightSeeings = [LuxurySightseeing]() {
            didSet {
                tableView.reloadData()
            }
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            tableView.dataSource = self
            loadData()
        }
        
        func loadData() {
            luxurySightSeeings = LuxurySightseeing.luxurySightseeing
           }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let detailVC = segue.destination as? FreeDetailViewController, let indexPath = tableView.indexPathForSelectedRow else {
                fatalError("failed to get indexPath and detailVC")
            }
            let sightseeing = luxurySightSeeings[indexPath.row]
            detailVC.luxurySightseeing = sightseeing
        }

    }

    extension LuxuryViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return luxurySightSeeings.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LuxuryCell", for: indexPath)
            
            let luxurySightSeeing = luxurySightSeeings[indexPath.row]
            cell.textLabel?.text = luxurySightSeeing.title
            
            return cell
        }
    }

    extension LuxuryViewController: UITableViewDelegate {
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 140
        }

}
