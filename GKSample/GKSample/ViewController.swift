//
//  ViewController.swift
//  GKSample
//
//  Created by 김영광 on 2021/06/14.
//

import UIKit
import GloryUIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        
        self.view.addSubview(GloryUIKit.VStack({ it in
            it.addView(GloryUIKit.testBtn())
            it.addView(GloryUIKit.testBtn())
            it.addView(GloryUIKit.testBtn())
            it.addView(GloryUIKit.testBtn())
            it.addView(GloryUIKit.testBtn())
            it.addView(GloryUIKit.testBtn())
            
        }))
    }
}

