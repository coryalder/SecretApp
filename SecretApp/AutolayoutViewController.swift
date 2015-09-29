//
//  AutolayoutViewController.swift
//  SecretApp
//
//  Created by Alp Eren Can on 29/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

import UIKit

class AutolayoutViewController: UIViewController {

    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var topLabelConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func login(loginButton: UIButton) {
        
        UIView.animateWithDuration(2.0) {
            
            self.topLabelConstraint.constant = -500
        
            self.view.layoutIfNeeded()
            
        }
        
        
    }

}
