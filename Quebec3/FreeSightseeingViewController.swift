//
//  FreeSightseeingViewController.swift
//  Quebec3
//
//  Created by Yuliia Engman on 1/4/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import UIKit

class FreeSightseeingViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var sightSeeings = [FreeSightseeing]() {
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
        sightSeeings = FreeSightseeing.freeSightseeing
       }

}

extension FreeSightseeingViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sightSeeings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FreeCell", for: indexPath)
        
        let sightSeeing = sightSeeings[indexPath.row]
        cell.textLabel?.text = sightSeeing.title
        
        return cell
    }
}

extension FreeDetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}
