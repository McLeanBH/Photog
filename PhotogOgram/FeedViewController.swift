//
//  FeedViewController.swift
//  PhotogOgram
//
//  Created by Bennett McLean on 7/16/15.
//  Copyright (c) 2015 Bennett McLean. All rights reserved.
//

import UIKit
import Parse
import Bolts

class FeedViewController: UIViewController, UITableViewDataSource
{
    var items = ["", "", "", ""]
    
    @IBOutlet var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var nib = UINib(nibName: "PostCell", bundle: nil)
        self.tableView?.registerNib(nib, forCellReuseIdentifier: "PostCellIdentifier")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    var items ()
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("PostCellIdentifier") as! PostCell
//        var item = items[indexPath.row] as! PFObject
//
//        cell.item = item
        
        return cell
    }
   
}
