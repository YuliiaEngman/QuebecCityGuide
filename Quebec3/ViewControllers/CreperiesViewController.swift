//
//  CafesViewController.swift
//  Quebec3
//
//  Created by Yuliia Engman on 1/4/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import UIKit

class CreperiesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var creperies = [Business]() {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        loadCafes()
    }
    
    func loadCafes() {
        CreperieAPIClient.fetchCreperie { [weak self] result in
            switch result {
            case .failure(let appError):
                DispatchQueue.main.async {
                    self?.showAlert(title: "App Error", message: "\(appError)")
                }
            case .success(let businesses):
                DispatchQueue.main.async {
                    self?.creperies = businesses
                }
                
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailCafeVC = segue.destination as? CreperiesDetailViewController, let indexPath = tableView.indexPathForSelectedRow else {
            fatalError("failed to get indexPath and detailCafeVC")
        }
        
        let someCreperie = creperies[indexPath.row]
        detailCafeVC.oneCreperie = someCreperie
    }
}

extension CreperiesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        creperies.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath)
        
       let creperie = creperies[indexPath.row]
       cell.textLabel?.text = creperie.name
        
        return cell
    }
}

extension CreperiesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
