//
//  roundedButtons.swift
//  ChatApp
//
//  Created by Benjamin on 27/10/2017.
//  Copyright © 2017 Benjamin. All rights reserved.
//

import UIKit
@IBDesignable

class roundedButtons: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    //Here
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView(){
        self.layer.cornerRadius = cornerRadius
    }
    
}
