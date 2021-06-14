//
//  GloryUIKit.swift
//  GloryUIKit
//
//  Created by 김영광 on 2021/06/10.
//

import Foundation
import UIKit
open class GloryUIKit {
    
    public static func test(){
        print("test!")
    }
    
    public static func testBtn()-> UIButton{
        var btn = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        btn.setTitle("테스트 버튼", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.blue, for: .focused)
        
        return btn
    }
    
}
