//
//  ViewController.swift
//  system_ui_exam
//
//  Created by Minki Choe on 03/10/2019.
//  Copyright © 2019 Minki Choe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lightLabel: UILabel!
    @IBOutlet weak var lightImage: UIImageView!
    @IBOutlet weak var lightSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onSwitchClicked(_ sender: Any) {
        let imgSrc: String!
        let labelText: String!
        
        if (lightSwitch.isOn) {
            imgSrc = "candle-on"
            labelText = "Candle is On"
        } else {
            imgSrc = "candle-off"
            labelText = "Candle is Off"
        }
        
        if let image = UIImage(named: imgSrc) {
            lightImage.image = image
            lightLabel.text = labelText
        }
    }
}

