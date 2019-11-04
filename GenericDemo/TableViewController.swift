//
//  TableViewController.swift
//  GenericDemo
//
//  Created by Sandeep Kharbanda on 11/10/19.
//  Copyright © 2019 Sandeep Kharbanda. All rights reserved.
//

import UIKit

class TableViewController: BaseTableViewController<UserBaseTableViewCell, User> {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        items = [4,444,444444 ,44] //["Str", "sdew ewo"]
        
        items = [
            User(firstName: "Sandeep", lastName: "Kharbanda", sex: .male),
            User(firstName: "Neha", lastName: "Kharbanda", sex: .female)

        ]

    }

}
