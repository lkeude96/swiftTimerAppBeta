//
//  SavedTimesTableViewController.swift
//  swiftTimerAppBeta
//
//  Created by Eude Kinsley Lesperance on 11/29/14.
//  Copyright (c) 2014 Qlovur. All rights reserved.
//

import UIKit

class SavedTimesTableViewController: UITableViewController {
    var savedTimesArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.backgroundView = UIImageView(image: UIImage(named:"blurPurple"))
        self.navigationController?.navigationBar.barTintColor = UIColor.whiteColor()
        self.tableView.separatorColor = UIColor(red: 255, green: 255, blue: 255, alpha: 0.5)
        self.tableView.separatorInset
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return savedTimesArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("timeCell", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...
        cell.textLabel.text = savedTimesArray[indexPath.row]
        cell.backgroundColor = UIColor.clearColor()

        return cell
    }

}
