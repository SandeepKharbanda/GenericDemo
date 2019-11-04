//
//  BaseTableViewCell.swift
//  GenericDemo
//
//  Created by Sandeep Kharbanda on 11/10/19.
//  Copyright © 2019 Sandeep Kharbanda. All rights reserved.
//

import UIKit

class BaseTableViewCell<U>: UITableViewCell {
    
    var item: U!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


class StringBaseTableViewCell: BaseTableViewCell<String> {
    
    override var item: String!{
        didSet{
            textLabel?.text = item
        }
    }
}

class IntBaseTableViewCell: BaseTableViewCell<Int> {
    override var item: Int?{
        didSet{
            textLabel?.text = "\(item!)"
        }
    }
}

enum Sex: String {
    case male = "Male", female = "Female"
}

struct User {
    var firstName: String
    var lastName: String
    var sex: Sex
}

class UserBaseTableViewCell: BaseTableViewCell<User> {
    override var item: User!{
        didSet{
            textLabel?.text = item.firstName + " " + item.lastName + " " + item.sex.rawValue
        }
    }
}
