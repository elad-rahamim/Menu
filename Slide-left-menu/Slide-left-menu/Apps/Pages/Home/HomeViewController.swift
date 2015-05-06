//
//  HomeViewController.swift
//  Slide-left-menu
//
//  Created by Elad Rahmim on 5/4/15.
//  Copyright (c) 2015 Elad Rahmim. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      open_menu()
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func open_menu(){
        
        
        let image = UIImage(named: "icon-menu.png") as UIImage?
        let button   = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        button.frame = CGRectMake(0, 0, 30, 30)
        button.setImage(image, forState: .Normal)
        button.addTarget(self, action: "open:", forControlEvents:.TouchUpInside)
        var myCustomBackButtonItem:UIBarButtonItem = UIBarButtonItem(customView: button)
        self.navigationItem.leftBarButtonItem  = myCustomBackButtonItem
    }
    
    func open(sender:UIButton!){
        var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        appDelegate.Container!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
