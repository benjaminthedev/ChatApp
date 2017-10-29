//
//  GradientView.swift
//  ChatApp
//
//  Created by Benjamin on 19/10/2017.
//  Copyright © 2017 Benjamin. All rights reserved.
//

import UIKit
@IBDesignable
class GradientView: UIView {

    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        didSet{
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        didSet{
            self.setNeedsLayout()
        }
    }
    
//Override
    override func layoutSubviews() {
        let graidentLayer = CAGradientLayer()
        graidentLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        graidentLayer.startPoint = CGPoint(x: 0, y: 0)
        graidentLayer.endPoint = CGPoint(x: 1, y: 1)
        graidentLayer.frame = self.bounds
        self.layer.insertSublayer(graidentLayer, at: 0)
    }
}
