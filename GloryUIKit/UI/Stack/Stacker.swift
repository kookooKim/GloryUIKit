//
//  Stacker.swift
//  GloryUIKit
//
//  Created by 김영광 on 2021/06/23.
//

import Foundation
import UIKit

open class Stacker {
    
//    static let shard = Stacker()
    
    var view = UIStackView()
    
    init(){
        self.view.axis           = .vertical
        self.view.spacing        = 8
        self.view.distribution   = .fillProportionally
        self.view.translatesAutoresizingMaskIntoConstraints = true
        self.view.backgroundColor = .orange
        self.view.frame          = CGRect(x: 0, y: 0, width: 300, height: 300)
    }
    open func bindParentView(parentView : UIView) -> Self {
        self.view.frame = parentView.frame
        return self
    }
    
    /// - Default : vertical
   open func horizontalMode() -> Self {
        self.view.axis = .horizontal
        return self
    }
    
    /// - Default : 8
    open func subviewsSpacing(_ spac : CGFloat) -> Self{
        self.view.spacing = spac
        return self
    }
    
    /// - Default : equalCentering
    open func distribution(_ distrbution : UIStackView.Distribution) -> Self{
        self.view.distribution = distrbution
        return self
    }
    
    open func addView(_ views : UIView?... ) -> Self{
        views.forEach({ v in
            if let view = v {
                self.view.addArrangedSubview(view)
            }
        })
        return self
    }
//    open func addView(_ view : UIView?) -> Self{
//        if let v = view {
//            self.view.addArrangedSubview(v)
////            self.view.heightAnchor.constraint(equalTo:self.view.arrangedSubviews[0].widthAnchor).isActive = true
//        }
//        return self
//    }
}
