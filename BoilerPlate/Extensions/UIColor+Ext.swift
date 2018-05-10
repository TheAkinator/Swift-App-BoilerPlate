//
//  UIColorExtension.swift
//  Sol Coletivo
//
//  Created by Yuri Frota on 01/03/18.
//  Copyright © 2018 solColetivo. All rights reserved.
//

import UIKit

extension UIColor {
    static func fromRGB(_ colorCode: String, alpha: Float = 1.0) -> UIColor {
        let scanner = Scanner(string:colorCode)
        var color:UInt32 = 0;
        scanner.scanHexInt32(&color)
        
        let mask = 0x000000FF
        let r = CGFloat(Float(Int(color >> 16) & mask)  / 255.0)
        let g = CGFloat(Float(Int(color >> 8)  & mask)  / 255.0)
        let b = CGFloat(Float(Int(color )      & mask)  / 255.0)
        
        return UIColor(red: r, green: g, blue: b, alpha: CGFloat(alpha))
    }
}
