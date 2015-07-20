//
//  IndexViewController.swift
//  instapad
//
//  Created by Marvin Allan Lu on 7/13/15.
//  Copyright (c) 2015 SourcePad. All rights reserved.
//

import UIKit

class IndexViewController: UIViewController {
    @IBOutlet var username: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onRegisterPressed(sender: AnyObject) {
        println("register")
    }
    
    @IBAction func onLoginPressed(sender: AnyObject) {
        performSegueWithIdentifier("loginSuccess", sender: self)
        return
        
        if username.text == "username" && password.text == "password" {
            performSegueWithIdentifier("loginSuccess", sender: self)
        } else {
            println("mali")
        }
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
