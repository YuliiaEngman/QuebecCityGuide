//
//  SightseeingViewController.swift
//  Quebec3
//
//  Created by Yuliia Engman on 1/4/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import UIKit

class BudgetViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
   var budgetSightSeeings = [BudgetSightseeing]() {
            didSet {
                tableView.reloadData()
            }
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            tableView.dataSource = self
            loadData()
            navigationItem.title = "BUDGET SIGHTSEEING"
        }
        
        func loadData() {
            budgetSightSeeings = BudgetSightseeing.budgetSightseeing
           }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let detailVC = segue.destination as? FreeDetailViewController, let indexPath = tableView.indexPathForSelectedRow else {
                fatalError("failed to get indexPath and detailVC")
            }
            let sightseeing = budgetSightSeeings[indexPath.row]
            detailVC.budgetSightseeing = sightseeing
        }

    }

    extension BudgetViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return budgetSightSeeings.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BudgetCell", for: indexPath)
            
            let budgetSightSeeing = budgetSightSeeings[indexPath.row]
            cell.textLabel?.text = budgetSightSeeing.title
            
            return cell
        }
    }

    extension BudgetViewController: UITableViewDelegate {
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 200
        }
}
