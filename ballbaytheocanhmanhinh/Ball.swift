//
//  ball.swift
//  ballbaytheocanhmanhinh
//
//  Created by Dương chãng on 11/14/19.
//  Copyright © 2019 macshop. All rights reserved.
//

import UIKit

class Ball: UIView {
    var circlelayer: CAShapeLayer!
    var radius: CGFloat = 0.0
    var color: UIColor!
    convenience init(center: CGPoint, radius: CGFloat, fillcolor: UIColor){
        self.init(frame: CGRect(x: center.x - radius, y: center.y, width: radius * 2.0, height: radius * 2.0))
        self.radius = radius
        self.color = fillcolor
    }
    override func draw(_ rect: CGRect) {
        // (vẽ bằng code)
        if circlelayer == nil{
            circlelayer = CAShapeLayer()
            circlelayer.path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)).cgPath
            circlelayer.fillColor = color.cgColor
            self.layer.addSublayer(circlelayer)
        }
    }
    
    
}
