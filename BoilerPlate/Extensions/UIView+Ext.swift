//
//  UIViewExtension.swift
//  Sol Coletivo
//
//  Created by Yuri Frota on 01/03/18.
//  Copyright © 2018 solColetivo. All rights reserved.
//

import UIKit

extension UIView {
    func dropShadow(withOpacity opacity: Float = 0.2, radius: CGFloat = 3) {
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = CGSize(width: 3, height: 4)
        self.layer.shadowRadius = radius
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        
        set {
            self.layer.cornerRadius = newValue
            self.layer.masksToBounds = true
            
        }
    }
}
