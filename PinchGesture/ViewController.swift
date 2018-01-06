//
//  ViewController.swift
//  PinchGesture
//
//  Created by SO YOUNG on 2018. 1. 6..
//  Copyright © 2018년 SO YOUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblPinch: UILabel!
    
    var initFontSize: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(gestureHandler(gesture:))) //시뮬레이터 사용방법 alt + cursor
        view.addGestureRecognizer(pinch)
    }
    
    @objc func gestureHandler(gesture: UIPinchGestureRecognizer) {
        print("UIPinchGestureRecognizer")
        if gesture.state == UIGestureRecognizerState.began {
            initFontSize = lblPinch.font.pointSize
        } else {
            lblPinch.font = lblPinch.font.withSize(initFontSize * gesture.scale)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

