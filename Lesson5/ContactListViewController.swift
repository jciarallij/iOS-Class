//
//  ContactListViewController.swift
//  Lesson5
//
//  Created by Joshua Ciaralli on 3/10/16.
//  Copyright © 2016 DigitalCrafts. All rights reserved.
//

import UIKit

class ContactListViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
   
    
    var contacts : [Contact]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.contacts = DataManager.sharedManager.loadContacts()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        // Do any additional setup after loading the view.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection
        section: Int) -> Int {
            return (self.contacts?.count)!
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        <#code#>
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath
        indexPath: NSIndexPath) -> UITableViewCell {
            //First get the contact for the row
            let contact = self.contacts![indexPath.row]
            let cell = UITableViewCell()
            cell.textLabel?.text = "\(contact.firstName!) \
            (contact.lastName!)"
            return cell
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

