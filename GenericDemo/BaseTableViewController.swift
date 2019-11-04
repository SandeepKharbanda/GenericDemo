//
//  BaseTableViewController.swift
//  GenericDemo
//
//  Created by Sandeep Kharbanda on 11/10/19.
//  Copyright © 2019 Sandeep Kharbanda. All rights reserved.
//

import UIKit

class BaseTableViewController<T: BaseTableViewCell<U>, U>: UITableViewController {
    
    var items: [U] = [U]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(T.self, forCellReuseIdentifier: "reuseIdentifier")
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as? T
        cell?.item = items[indexPath.item]
        return cell!
    }

}
