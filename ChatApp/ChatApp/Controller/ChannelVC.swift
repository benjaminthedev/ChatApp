//
//  ChannelVC.swift
//  ChatApp
//
//  Created by Benjamin on 14/10/2017.
//  Copyright © 2017 Benjamin. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

    

}
