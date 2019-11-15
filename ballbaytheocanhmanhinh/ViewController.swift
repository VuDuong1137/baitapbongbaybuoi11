//
//  ViewController.swift
//  ballbaytheocanhmanhinh
//
//  Created by Dương chãng on 11/14/19.
//  Copyright © 2019 macshop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var ball: Ball!
    var radius: CGFloat = 50.0
    var time1: Timer!
    var time2: Timer!
    var time3: Timer!
    var time4: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ball = Ball(center: CGPoint(x: radius, y: radius), radius: radius, fillcolor: UIColor.green)
        view.addSubview(ball)
        time1 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(runtime1), userInfo: nil, repeats: true)
        
    }
    @objc func runtime1(){
        right()
    }
    
    
    func right(){
        self.ball.frame.origin.x += 10
        if self.ball.frame.origin.x >= self.view.frame.maxX - self.radius * 2{
            time1.invalidate()
            time2 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runtime2), userInfo: nil, repeats: true)
            }
    }
    
        @objc func runtime2(){
        vexuongduoi()
            
        }
    func vexuongduoi() {
        self.ball.frame.origin.y += 10
        if self.ball.frame.origin.y >= self.view.frame.maxY - self.radius * 2{
            time2.invalidate()
            time3 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runtime3), userInfo: nil, repeats: true)
    }
    }
    @objc func runtime3(){
        vedaytraiphai()
    }
    func vedaytraiphai() {
        self.ball.frame.origin.x -= 10
        if self.ball.frame.origin.x <= self.view.frame.minX{
            time3.invalidate()
            time4 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runtime4), userInfo: nil, repeats: true)
        }
    }
    @objc func runtime4(){
        vetudaylentrenbentrai()
    }
    func vetudaylentrenbentrai() {
        self.ball.frame.origin.y -= 10
        if self.ball.frame.origin.y <= self.view.frame.minY{
            time4.invalidate()
            time1 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runtime1), userInfo: nil, repeats: true)
        }
    }
}

