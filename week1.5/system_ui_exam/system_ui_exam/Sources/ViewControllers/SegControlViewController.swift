//
//  SendViewController.swift
//  system_ui_exam
//
//  Created by Minki Choe on 03/10/2019.
//  Copyright © 2019 Minki Choe. All rights reserved.
//

import UIKit

class SegControlViewController: UIViewController
{
    @IBOutlet var leftRightSegControl: UISegmentedControl!
    @IBOutlet var displayLabel: UILabel!
    var selectedSegmentIndex: Int!
    var info: String!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // String변수를 사용해 segment 별 text를 저장하고 싶다.
        if let contentString = info
        {
            displayLabel.text = contentString
        }
        
        // Integer변수를 사용해 segment 별 index를 저장하고 싶다.
        if let whichSelect = selectedSegmentIndex
        { leftRightSegControl.selectedSegmentIndex = whichSelect
        }
    }
}
