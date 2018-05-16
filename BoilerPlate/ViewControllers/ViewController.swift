//
//  ViewController.swift
//  BoilerPlate
//
//  Created by Raul Marques de Oliveira on 10/05/18.
//  Copyright © 2018 Raul Marques de Oliveira. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func next(_ sender: Any) {
        let dest = ExampleTableViewController.instantiateFromStoryboard(storyboard: .Main)
        present(dest, animated: true, completion: nil)
    }
    

}

