//
//  NibLoadableView+Ext.swift
//  BoilerPlate
//
//  Created by Raul Marques de Oliveira on 10/05/18.
//  Copyright © 2018 Raul Marques de Oliveira. All rights reserved.
//

import UIKit

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
    
    static func viewForNib<T: UIView>() -> T? {
        guard let view = Bundle.main.loadNibNamed(Self.nibName, owner: self, options: nil)?.first as? T else {
            return nil
        }
        
        return view
    }
}
