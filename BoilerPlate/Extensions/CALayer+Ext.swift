//
//  CALayerExtension.swift
//  Sol Coletivo
//
//  Created by Yuri Frota on 01/03/18.
//  Copyright © 2018 solColetivo. All rights reserved.
//

import UIKit

extension CALayer {
    func roundCorners(radius: CGFloat) {
        self.cornerRadius = radius
        if shadowOpacity != 0 {
            addShadowWithRoundedCorners()
        }
    }
    func addShadow(withOpacity opacity: Float = 0.2, radius: CGFloat = 3) {
        self.shadowOffset = .zero
        self.shadowOpacity = opacity
        self.shadowRadius = radius
        self.shadowColor = UIColor.black.cgColor
        self.masksToBounds = false
        
        if cornerRadius != 0 {
            addShadowWithRoundedCorners()
        }
    }
    
    func addShadowWithRoundedCorners() {
        if let contents = self.contents {
            masksToBounds = false
            sublayers?.filter{ $0.frame.equalTo(self.bounds) }
                .forEach{ $0.roundCorners(radius: self.cornerRadius) }
            self.contents = nil
            if let sublayer = sublayers?.first,
                sublayer.name == "ShadowLayer" {
                
                sublayer.removeFromSuperlayer()
            }
            let contentLayer = CALayer()
            contentLayer.name = "ShadowLayer"
            contentLayer.contents = contents
            contentLayer.frame = bounds
            contentLayer.cornerRadius = cornerRadius
            contentLayer.masksToBounds = true
            insertSublayer(contentLayer, at: 0)
        }
    }
}
