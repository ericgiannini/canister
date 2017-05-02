//
//  TaskTVC.swift
//  locker
//
//  Created by Eric Giannini on 5/1/17.
//  Copyright © 2017 Unicorn Mobile, LLC. All rights reserved.
//

import UIKit

class TaskTVC: UITableViewCell {
    

    lazy public weak var title: UILabel = {
    
    }()
    lazy public weak var priority: UILabel = {
    
    }()
    lazy public weak var check: UIButton = {
    
    }()
    lazy public weak var spinner: UIActivityIndicatorView = {
    
    }()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
