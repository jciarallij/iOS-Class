//
//  Datamanager.swift
//  Lesson5
//
//  Created by Joshua Ciaralli on 3/10/16.
//  Copyright © 2016 DigitalCrafts. All rights reserved.
//

import Foundation


struct DataManager
{
    
   static let sharedManager = DataManager()
    func saveContacts(contacts:[Contact])
    {
        //We'll implement this later
    }
    
    func loadContacts() -> [Contact]? {
        var contactsArray = [Contact]()
        for var i = 0; i < 10; i++ {
            var c = Contact()
            c.firstName = "Vinny"
            c.lastName = "Barbarino"
            c.streetAddress = "123 Happy Street"
            c.phoneNumber = "404-555-1212"
            c.city = "Brooklyn"
            c.state = "New York"
            c.zipCode = "11201"
            contactsArray.append(c)
        }
        return contactsArray
    }

}




