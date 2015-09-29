//
//  ViewController.swift
//  SecretApp
//
//  Created by Alp Eren Can on 29/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewWillAppear(animated: Bool) {
        
        self.appNameLabel.alpha = 0
        self.usernameField.alpha = 0
        self.passwordField.alpha = 0
        self.loginButton.alpha = 0
        
        
        self.loginButton.frame.origin.y -= self.view.frame.size.height
        
    }
    
    
    override func viewDidAppear(animated: Bool) {
        
        
        UIView.animateWithDuration(2.8) {
            
            self.appNameLabel.alpha = 1.0
            self.usernameField.alpha = 1.0
            self.passwordField.alpha = 1.0
            self.loginButton.alpha = 1.0
            
            self.view.backgroundColor = UIColor.purpleColor()
        }
        
//        UIView.animateWithDuration(1.0) {
//            
//            self.loginButton.frame.origin.y += self.view.frame.size.height
//        }
        
        UIView.animateWithDuration(2.0, delay: 0.8, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.0, options: [UIViewAnimationOptions.AllowUserInteraction], animations: {
        
            self.loginButton.frame.origin.y += self.view.frame.size.height
            
            
            }) { (completed) -> Void in
                
                if completed {
                    print("done bounce-in animation")
                } else {
                    print("bounce-in animation didn't complete")
                }
                
        }
        
        
        
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func login(loginButton: UIButton) {
        
        
        if usernameField.text == "cory" && passwordField.text == "1234" {
            
            
            
            UIView.animateWithDuration(0.5, delay: 0.1, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
                
                self.loginButton.frame.origin.y += 500
                
                self.loginButton.transform = CGAffineTransformMakeRotation(CGFloat(-M_PI_4))
                
                }) { (success) -> Void in
                    
                    self.loginButton.removeFromSuperview()
                    print("login button gone!")
                    
            }
            
            
        } else {
            
            let home = self.passwordField.center.x
        
            UIView.animateKeyframesWithDuration(0.5, delay: 0.0, options: [], animations: {
                
                UIView.addKeyframeWithRelativeStartTime(0.5, relativeDuration: 0.5, animations: {
                    self.passwordField.center.x = home + 20
                    self.usernameField.transform = CGAffineTransformMakeRotation(CGFloat(M_PI_4))
                })
                
                
                UIView.addKeyframeWithRelativeStartTime(0.2, relativeDuration: 0.3, animations: {
                    self.passwordField.center.x = home - 20
                    self.usernameField.transform = CGAffineTransformMakeRotation(CGFloat(-M_PI_4))
                })
     
                
                UIView.addKeyframeWithRelativeStartTime(0.8, relativeDuration: 0.2, animations: {
                    self.passwordField.center.x = home
                    
                    self.usernameField.transform = CGAffineTransformIdentity
                })

                
                
                
                
                }) { completed in
                    
                    
                }
            
            
        
        }
        
        
        
        
//
//        UIView.transitionFromView(<#T##fromView: UIView##UIView#>, toView: <#T##UIView#>, duration: <#T##NSTimeInterval#>, options: <#T##UIViewAnimationOptions#>, completion: <#T##((Bool) -> Void)?##((Bool) -> Void)?##(Bool) -> Void#>)
//        
        
        
    }
    
    

}

