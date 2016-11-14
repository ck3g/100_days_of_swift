//
//  GroceriesTableViewController.swift
//  BasicTableView
//
//  Created by Vitaly Tatarintsev on 14/11/2016.
//  Copyright © 2016 Vitaly Tatarintsev. All rights reserved.
//

import UIKit

class GroceriesTableViewController: UITableViewController {

    // MARK: - Variables
    var items = ["milk", "apples", "ham", "eggs"]

    // MARK: - View did load
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groceriesCell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]

        return cell
    }


}
