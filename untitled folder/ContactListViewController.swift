//
//  ContactListViewController.swift
//  ContactApp
//
//  Created by Joshua Ciaralli on 3/15/16.
//  Copyright © 2016 DigitalCrafts. All rights reserved.
//

import UIKit

class ContactListViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

     @IBOutlet weak var tableView: UITableView!
    
    var contacts : [Contact]?
   
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        
        self.contacts = DataManager.sharedManager.loadContacts()
    }

    
    
    func tableView(tableView: UITableView, numberOfRowsInSection
        section: Int) -> Int {
            return (self.contacts?.count)!
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath
        indexPath: NSIndexPath) -> UITableViewCell {
            //First get the contact for the row
            let contact = self.contacts![indexPath.row]
            let cell = UITableViewCell()
            cell.textLabel?.text = "\(contact.firstName!) \(contact.lastName!)"
            return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath
        indexPath: NSIndexPath) {
            self.performSegueWithIdentifier("ContactDetailSegue", sender:
                self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender:
        AnyObject?) {
            if segue.identifier == "ContactDetailSegue" {
                if let selectedCell =
                    self.tableView.indexPathForSelectedRow {
                        let selectedContact = self.contacts![selectedCell.row]
                        if let detailVC = segue.destinationViewController as?
                            ContactsDetailViewController {
                                detailVC.selectedContact = selectedContact
                        }
                }
            }
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
