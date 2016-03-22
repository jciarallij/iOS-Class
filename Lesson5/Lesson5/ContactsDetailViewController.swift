//
//  ContactsDetailViewController.swift
//  Lesson5
//
//  Created by Joshua Ciaralli on 3/15/16.
//  Copyright © 2016 DigitalCrafts. All rights reserved.
//

import UIKit

class ContactsDetailViewController: UIViewController {
    
    var selectedContact : Contact!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstNameLabel.text = self.selectedContact.firstName
        self.lastNameLabel.text = self.selectedContact.lastName

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
