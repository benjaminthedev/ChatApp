//
//  CreateAccountVC.swift
//  ChatApp
//
//  Created by Benjamin on 25/10/2017.
//  Copyright © 2017 Benjamin. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    //Outlets
    
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    
    @IBOutlet weak var userImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailTxt.text , emailTxt.text != "" else{
            return
        }
        
        guard let pass = passTxt.text , passTxt.text != "" else{
            return
        }
        
        AuthService.instance.registerUser(email: email, password: pass)
        { (success) in
            if success {
                print("registered user!")
            }
            
        }
        
    }
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    
    @IBAction func pickBgColorPressed(_ sender: Any) {
    }
    
    @IBAction func closedPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
