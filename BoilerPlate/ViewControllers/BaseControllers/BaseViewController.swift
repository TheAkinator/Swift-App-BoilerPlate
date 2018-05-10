//
//  ViewController.swift
//  BoilerPlate
//
//  Created by Raul Marques de Oliveira on 10/05/18.
//  Copyright © 2018 Raul Marques de Oliveira. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func setDismissKeyboardOnTouch() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap!)
    }
    
    @objc func dismissKeyboard() {
        self.view.endEditing(true)
    }
    


}
