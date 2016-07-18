//
//  ViewController.swift
//  UITableVIew
//
//  Created by Ainor Syahrizal on 18/07/2016.
//  Copyright © 2016 Ainor Syahrizal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    // a UITableViewDataSource must have
    // numberOfRowsInSection
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    // and cellForRowAtIndex
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        if indexPath.row == 0 {
            cell.textLabel?.text = "Row Zero"
        } else if indexPath.row == 1 {
            cell.textLabel?.text = "Row One"
        } else if indexPath.row == 2 {
            cell.textLabel?.text = "Row Two"
        }
        return cell
    }
}