//
//  StartViewController.swift
//  PhotogOgram
//
//  Created by Bennett McLean on 7/13/15.
//  Copyright (c) 2015 Bennett McLean. All rights reserved.
//

import UIKit
import Parse
import Bolts

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBarHidden = true

    }
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // definded new fxn with func keyword, named it with didTapSignIn
    // IB Action:  within an Interface Builder action assigned "touch-up-inside" to user. see xib. similar to override
    // arguments: connections bw a fxn and a btn, sender -> view
    
    @IBAction func didTapSignIn(sender: AnyObject)
    {
        var viewController = AuthViewController(nibName: "AuthViewController", bundle: nil)
        viewController.authMode = AuthMode.SignIn
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func didTapSignUp(sender: AnyObject)
    {
        var viewController = AuthViewController(nibName: "AuthViewController", bundle: nil)
        viewController.authMode = AuthMode.SignUp
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}


// self.edgesForExtendedLayout = UIRectEdge.None