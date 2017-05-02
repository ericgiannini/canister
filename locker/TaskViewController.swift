//
//  TaskViewController.swift
//  locker
//
//  Created by Eric Giannini on 5/1/17.
//  Copyright © 2017 Unicorn Mobile, LLC. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print(" task View Controller is displayed ")
        
    }
    
    // MARK: - Properties
    let tableView = UITableView()
    var tasks = [String]()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.blue
        
        tableView.frame = CGRect(x: view.bounds.maxX, y: view.bounds.maxY, width: view.bounds.size.width, height: view.bounds.size.height)
        
        view.addSubview(tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

// MARK: - UITableViewDataSource

extension TaskViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "cell" // to be refactored immediately
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        return cell
    }
    
}

// MARK: - UITableViewDelegate


extension TaskViewController : UITableViewDelegate {
    
    private func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "You have \(tasks.count) tasks"
    }
}
