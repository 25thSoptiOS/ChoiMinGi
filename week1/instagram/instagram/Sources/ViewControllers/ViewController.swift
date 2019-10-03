//
//  ViewController.swift
//  instagram
//
//  Created by Minki Choe on 03/10/2019.
//  Copyright © 2019 Minki Choe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var iconLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set view title.
        title = "Soptstagram"
        username = "sopt.iOS.Lover"
        self.iconLabel.text = username
        
        // Set icon to Round.
        icon.layer.masksToBounds = true
        icon.layer.cornerRadius = icon.bounds.width / 2
    }
    
    @IBAction func like(_ sender: Any) {
        let imageName = (likeLabel.text == "") ? "heart-filled-with-red" : "heart-filled-with-white"
        let labelText = (likeLabel.text == "") ? username+"님이 좋아합니다." : ""
        
        if let image = UIImage(named: imageName) {
            likeButton.setImage(image, for: .normal)
            likeLabel.text = labelText
        }
    }
    
}

