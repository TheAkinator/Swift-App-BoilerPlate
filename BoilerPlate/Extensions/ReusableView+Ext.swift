//
//  ReusableView+Ext.swift
//  BoilerPlate
//
//  Created by Raul Marques de Oliveira on 10/05/18.
//  Copyright © 2018 Raul Marques de Oliveira. All rights reserved.
//

import UIKit

extension ReusableView where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

