//
//  UICollectionViewExtension.swift
//  Sol Coletivo
//
//  Created by Yuri Frota on 05/03/18.
//  Copyright © 2018 solColetivo. All rights reserved.
//

import UIKit

extension UICollectionView {
    //Register cell from class reference
    func register<T: UICollectionViewCell>(_: T.Type) {
        let Nib = UINib(nibName: T.nibName, bundle: nil)
        register(Nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    //Dequeue cell from class reference
    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as? T else {
            fatalError("Could not find cell with identifier: \(T.reuseIdentifier)")
        }
        
        return cell
    }
}
