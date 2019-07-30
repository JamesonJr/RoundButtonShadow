//
//  CustomButton.swift
//  ArithmeticsEqualsFull
//
//  Created by Eugenie Tyan on 7/30/19.
//  Copyright © 2019 evgen. All rights reserved.
//

import UIKit

final class CustomButton: UIButton {
    
    private var shadowLayer: CAShapeLayer!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if shadowLayer == nil {
            shadowLayer = CAShapeLayer()
            shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: 30).cgPath
            shadowLayer.fillColor = #colorLiteral(red: 0.8823529412, green: 1, blue: 0.9568627451, alpha: 1).cgColor
            
            shadowLayer.shadowColor = UIColor.darkGray.cgColor
            shadowLayer.shadowPath = shadowLayer.path
            shadowLayer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            shadowLayer.shadowOpacity = 0.8
            shadowLayer.shadowRadius = 2
            
//            layer.insertSublayer(shadowLayer, at: 0)
            
            layer.insertSublayer(shadowLayer, below: nil) // also works
        }
        
    }
    
}

