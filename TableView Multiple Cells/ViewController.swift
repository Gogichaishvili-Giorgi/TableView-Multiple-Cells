//
//  ViewController.swift
//  TableView Multiple Cells
//
//  Created by Giorgi Gogichaishvili on 10/18/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var table: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(FirstTableViewCell.nib(), forCellReuseIdentifier: FirstTableViewCell.identifier)
        table.register(SecondTableViewCell.nib(), forCellReuseIdentifier: SecondTableViewCell.identifier)
        
        table.delegate = self
        table.dataSource = self
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell?
        
        if indexPath.row % 2 == 0 {
            //even
            cell = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath)
        }
        else {
            cell = tableView.dequeueReusableCell(withIdentifier: "FirstTableViewCell", for: indexPath)
        }
        return cell!
}
}
