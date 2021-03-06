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
    
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    //Vars
    var avatarName = "profileDefault"
    var avatarColor = "[0.5, 0.5, 0.5, 1]"
    var bgColor : UIColor?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if UserDataService.instance.avatarName != "" {
            userImg.image = UIImage(named: UserDataService.instance.avatarName)
            avatarName = UserDataService.instance.avatarName
        }
        
        if avatarName.contains("light") && bgColor == nil{
            userImg.backgroundColor = UIColor.lightGray
        }
        
    }

    @IBAction func createAccountPressed(_ sender: Any) {
        //Spinner
        spinner.isHidden = false
        spinner.startAnimating()
        
        guard let name = usernameTxt.text , usernameTxt.text != "" else{
            return
        }
        
        guard let email = emailTxt.text , emailTxt.text != "" else{
            return
        }
        
        guard let pass = passTxt.text , passTxt.text != "" else{
            return
        }
        
        AuthService.instance.registerUser(email: email, password: pass)
        { (success) in
            if success {
                AuthService.instance.loginUser(email: email, password: pass, completion: { (success) in
                    if success {
                        self.spinner.isHidden = true
                        self.spinner.stopAnimating()
                        print("Logged In Users", AuthService.instance.authToken)
                        AuthService.instance.createUser(name: name, email: email, avatarName: self.avatarName, avatarColor: self.avatarColor, completion: { (success) in
                            if success {
                                print(UserDataService.instance.name,
                                      UserDataService.instance.avatarName)
                               self.performSegue(withIdentifier: UNWIND, sender: nil)
                            }
                        })
                    }
                })
            }
            
        }
        
    }
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_AVATAR_PICKER, sender: nil)
    }
    
    @IBAction func pickBgColorPressed(_ sender: Any) {
        let r = CGFloat(arc4random_uniform(255)) / 255
        let g = CGFloat(arc4random_uniform(255)) / 255
        let b = CGFloat(arc4random_uniform(255)) / 255
        
        bgColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        UIView.animate(withDuration: 0.2){
            self.userImg.backgroundColor = self.bgColor
        }
        self.userImg.backgroundColor = bgColor
    }
    
    @IBAction func closedPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    func setupView(){
        usernameTxt.attributedPlaceholder = NSAttributedString(string: "username", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceholder])
        emailTxt.attributedPlaceholder = NSAttributedString(string: "email", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceholder])
        passTxt.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceholder])
    
        //Spinner
        spinner.isHidden = true
    
    }
    
}
