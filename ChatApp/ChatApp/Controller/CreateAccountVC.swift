//
//  CreateAccountVC.swift
//  ChatApp
//
//  Created by Benjamin on 25/10/2017.
//  Copyright © 2017 Benjamin. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func closedPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
