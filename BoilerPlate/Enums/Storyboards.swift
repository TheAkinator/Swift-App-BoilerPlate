//
//  Storyboards.swift
//  BoilerPlate
//
//  Created by Raul Marques de Oliveira on 10/05/18.
//  Copyright © 2018 Raul Marques de Oliveira. All rights reserved.
//

import UIKit

enum Storyboard: String {
    case Main
    
    
    func instantiateViewController<T: UIViewController>(WithIdentifier id: String) -> T {
        let instance = UIStoryboard.init(name: self.rawValue, bundle: Bundle.main)
        return instance.instantiateViewController(withIdentifier: id) as! T
    }
}
