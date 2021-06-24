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
//        self.view.addSubview(GloryUIKit.testBtn())
        
        self.view.addSubview(GloryUIKit.VStack({ it in
            it.bindParentView(parentView: self.view)
            it.addView(GloryUIKit.testBtn(),
                        GloryUIKit.testBtn(),
                        GloryUIKit.testBtn(),
                        GloryUIKit.testBtn(),
                        GloryUIKit.testBtn(),
                        GloryUIKit.testBtn(),
                        GloryUIKit.testBtn(),
                        GloryUIKit.testBtn())
                .distribution(.equalSpacing)
        }))
//        v.frame(forAlignmentRect: self.view.frame)
//        self.view.addSubview(v)
//        v.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
//        v.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
//        v.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//        v.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
}

