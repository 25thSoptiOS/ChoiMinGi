//
//  ViewController.swift
//  helloworld
//
//  Created by Minki Choe on 01/10/2019.
//  Copyright © 2019 Minki Choe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onGreet(_ sender: Any) {
        titleLabel.text = "Hi, SOPT!"
    }
}

