//
//  MenuTableViewController.swift
//  Slide-left-menu
//
//  Created by Elad Rahmim on 5/4/15.
//  Copyright (c) 2015 Elad Rahmim. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    var items = ["Home", "About", "FaceBook"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Menu"
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    // Return the row for the corresponding section and row
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell_ : UITableViewCell? = tableView.dequeueReusableCellWithIdentifier("CELL_ID") as? UITableViewCell
        
        if(cell_ == nil){
            cell_ = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "CELL_ID")
        }
        
        cell_!.textLabel!.text = items[indexPath.row] as String
        return cell_!
    }
    
    
    override func  tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch(indexPath.row){
        case 0:
            var home = HomeViewController(nibName: "HomeViewController", bundle: nil)
            var centerNav = UINavigationController(rootViewController: home)
            
            var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            appDelegate.Container!.centerViewController = centerNav
            appDelegate.Container!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
            
            break;
            
        case 1:
            var about = AboutViewController(nibName: "AboutViewController", bundle: nil)
            var centerNav = UINavigationController(rootViewController: about)
            
            var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            appDelegate.Container!.centerViewController = centerNav
            appDelegate.Container!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
            break;
            
        default:
            println(items[indexPath.row])
            
            
        }
    }
}
