//
//  Extenstions.swift
//  AR_basic01
//
//  Created by Gillian  on 2017/11/23.
//  Copyright © 2017年 Gillian . All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    static func randomF() -> CGFloat{
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
    
    static func random() -> UIColor{
        return UIColor(red:  randomF(),
                       green: randomF(),
                       blue: randomF(),
                       alpha:1.0)
    }
}
