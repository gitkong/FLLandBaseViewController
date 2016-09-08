//
//  FLLandBaseViewController.swift
//  FLLandBaseViewController(Swift)
//
//  Created by clarence on 16/9/9.
//  Copyright © 2016年 clarence. All rights reserved.
//

import UIKit

class FLLandBaseViewController: UIViewController {
    
    override func loadView() {
        let fl_view = UIView.init(frame: CGRect.init(x: 0.0, y: 0.0, width: UIScreen.mainScreen().bounds.size.height, height: UIScreen.mainScreen().bounds.size.width))
        fl_view.backgroundColor = UIColor.whiteColor()
        self.view = fl_view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        fl_screenStyle(UIInterfaceOrientation.LandscapeRight)
    }

    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        fl_screenStyle(UIInterfaceOrientation.Portrait)
    }
    
    func fl_screenStyle(style : UIInterfaceOrientation) {
        var variable : Int = 0
        switch style {
        case .Unknown:
            variable = 0
        case .Portrait:
            variable = 1
        case .PortraitUpsideDown:
            variable = 2
        case .LandscapeLeft:
            variable = 3
        default:
            variable = 4
        }
        let value : NSNumber = NSNumber.init(long: variable)
        UIDevice.currentDevice().setValue(value, forKey: "orientation")
    }
}
