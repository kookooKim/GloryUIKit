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
        self.view.distribution   = .equalCentering
        self.view.translatesAutoresizingMaskIntoConstraints = true
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
    
    open func addViews(_ views : UIView?... ) -> Self{
        views.forEach({ v in
            if let view = v {
                self.view.addArrangedSubview(view)
            }
        })
        return self
    }
    open func addView(_ view : UIView?) -> Self{
        if let v = view {
            self.view.addArrangedSubview(v)
        }
        return self
    }
}
