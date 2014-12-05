//
//  LoginViewController.swift
//  IngresseSDKTest
//
//  Created by Rodrigo Borges Soares on 23/09/14.
//  Copyright (c) 2014 Ingresse. All rights reserved.
//

import UIKit

import IngresseSDK

class LoginViewController: UIViewController {
    
    @IBOutlet weak var tokenLabel: UILabel!
    @IBOutlet weak var userIdLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func login(sender: AnyObject) {
    
        IngresseSettings.sharedInstance().privateKey = "INSERT_YOUR_PRIVATE_KEY";
        IngresseSettings.sharedInstance().publicKey = "INSERT_YOUR_PUBLIC_KEY";
        IngresseSettings.sharedInstance().ingresseAppId = "123";
        
        let authClient = IngresseAuthClient()
        
        authClient.loginWithHandler({(error: NSError!, user: IngresseUser!) in
            
            if let err = error {
                NSLog("error detected!")

            } else {
                self.tokenLabel.text = "token: \(user.userToken)";
                self.userIdLabel.text = "userId: \(user.userId)";
                
            }
        })
        
        
    }

}
