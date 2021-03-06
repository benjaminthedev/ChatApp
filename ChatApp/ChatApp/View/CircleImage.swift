//
//  CircleImage.swift
//  ChatApp
//
//  Created by Benjamin on 27/11/2017.
//  Copyright © 2017 Benjamin. All rights reserved.
//

import UIKit

@IBDesignable

class CircleImage: UIImageView {
    
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView(){
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
    
}
