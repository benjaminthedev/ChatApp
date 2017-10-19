//
//  ChatVC.swift
//  ChatApp
//
//  Created by Benjamin on 14/10/2017.
//  Copyright © 2017 Benjamin. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    //outlets

    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
    }



}
