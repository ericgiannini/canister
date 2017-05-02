//
//  TaskTVC.swift
//  locker
//
//  Created by Eric Giannini on 5/1/17.
//  Copyright © 2017 Unicorn Mobile, LLC. All rights reserved.
//

import UIKit

class TaskTVC: UITableViewCell {
    
    static let cellIdentifier = "tableViewCell"

    lazy public var title: UILabel = {
        let title = UILabel()

        return title
    }()
    
    lazy public var priority: UILabel = {
        let priority = UILabel()
        
        return priority
        }()
    
    lazy public var check: UIButton = {
        let check = UIButton()
        
        return check
    }()
    
    lazy public var spinner: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView()
    
        return spinner
    }()
    

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // contentView
        [title, priority, check, spinner].forEach(contentView.addSubview)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
