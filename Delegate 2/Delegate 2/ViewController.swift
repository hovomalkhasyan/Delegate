//
//  ViewController.swift
//  Delegate 2
//
//  Created by Hovo on 6/8/20.
//  Copyright © 2020 Hovo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }



}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.delegate = self
        cell.btn.tag = indexPath.row
        return cell
    }
    
    
}

extension ViewController: DidSelectButtonDelegate {
    func didSelectButtons(with row: Int) {
        print(row)
    }
    
    
}
