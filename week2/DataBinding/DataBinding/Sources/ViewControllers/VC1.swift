//
//  VC1.swift
//  DataBinding
//
//  Created by Minki Choe on 2019/10/12.
//  Copyright © 2019 Minki Choe. All rights reserved.
//

import UIKit

class VC1: UIViewController {
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var isUpdate: UISwitch!
    @IBOutlet weak var interval: UIStepper!
    
    @IBOutlet weak var intervalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onSubmit(_ sender: UIButton) {
        guard let vc2 = self.storyboard?.instantiateViewController(withIdentifier: "VC2") as? VC2 else { return }
        
        vc2.paramEmail = self.email.text!
        vc2.paramUpdate = self.isUpdate.isOn
        vc2.paramInterval = self.interval.value
        
        self.present(vc2, animated: true)
    }
    
    @IBAction func onIntervalChange(_ sender: UIStepper) {
        intervalLabel.text = "\(self.interval.value)분 마다"
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
