//
//  SecondViewController.swift
//  FLLandBaseViewController(Swift)
//
//  Created by clarence on 16/9/9.
//  Copyright © 2016年 clarence. All rights reserved.
//

import UIKit

class SecondViewController: FLLandBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel.init(frame: CGRect.init(x: self.view.bounds.size.width - 200, y: 0, width: 200, height: 30))
        label.text = "小咧咧 clarence"
        view.addSubview(label)
    }

}
