//
//  NetworkManager.swift
//  PhotogOgram
//
//  Created by Bennett McLean on 7/16/15.
//  Copyright (c) 2015 Bennett McLean. All rights reserved.
//

import Foundation
import Parse
import Bolts

public class NetworkManager
{
    public class var sharedInstance: NetworkManager
    {
        struct Singleton
        {
            static let instance = NetworkManager()
        }
        
        return Singleton.instance
    }
    
    func follow(user: PFUser!, completionHandler:(error: NSError?) -> ())
    {
        var relation = PFUser.currentUser()!.relationForKey("following")
        relation.addObject(user)
        PFUser.currentUser()!.saveInBackgroundWithBlock({
            (success, error) -> Void in
            
            completionHandler(error: error)
        })
    }
    
    
}