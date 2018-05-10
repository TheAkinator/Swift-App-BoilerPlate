//
//  UIViewController+Ext.swift
//  BoilerPlate
//
//  Created by Raul Marques de Oliveira on 10/05/18.
//  Copyright © 2018 Raul Marques de Oliveira. All rights reserved.
//

import UIKit

extension UIViewController {
    
    static var className: String {
        return String(describing: self)
    }
    
    class func instantiateFromStoryboard(storyboard: Storyboard) -> Self{
        
        return storyboard.instantiateViewController(WithIdentifier: className)
        
    }
}
