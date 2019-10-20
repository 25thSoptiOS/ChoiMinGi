//
//  ViewController.swift
//  DataBinding
//
//  Created by Minki Choe on 2019/10/12.
//  Copyright © 2019 Minki Choe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination
        let button = sender as! UIButton
        destination.title = button.titleLabel?.text
        
        destination.view.backgroundColor = button.titleColor(for: .normal)
    }

}

