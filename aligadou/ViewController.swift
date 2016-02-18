//
//  ViewController.swift
//  aligadou
//
//  Created by 张天琦 on 16/2/17.
//  Copyright © 2016年 张天琦. All rights reserved.
//

import UIKit

 let viewa:UIView = UIView(frame: CGRectMake(0,0,100,100))

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
         viewa.backgroundColor = UIColor.redColor()
        view.addSubview(viewa)
        UIView.animateKeyframesWithDuration(4, delay: 1, options: UIViewKeyframeAnimationOptions.CalculationModeLinear, animations: { () -> Void in
            var centera:CGPoint = viewa.center
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0.5, animations: { () -> Void in
                centera.x += 50
                centera.y += 100
                viewa.center = centera
                print("a")
            })
            UIView.addKeyframeWithRelativeStartTime(0.5, relativeDuration: 2, animations: { () -> Void in
                centera.x += 200
                centera.y += 80
                viewa.center = centera
                print("b")
            })
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 1, animations: { () -> Void in
                
  
                 viewa.transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
            })
            
            
            }) { (Bool) -> Void in
                
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

