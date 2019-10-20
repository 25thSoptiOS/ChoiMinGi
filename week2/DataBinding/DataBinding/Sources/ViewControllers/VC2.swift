//
//  VC2.swift
//  DataBinding
//
//  Created by Minki Choe on 2019/10/12.
//  Copyright © 2019 Minki Choe. All rights reserved.
//

import UIKit

class VC2: UIViewController {
    @IBOutlet weak var resultEmail: UILabel!
    @IBOutlet weak var resultUpdate: UILabel!
    @IBOutlet weak var resultInterval: UILabel!
    
    var paramEmail: String = ""
    var paramUpdate: Bool = false
    var paramInterval: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultEmail.text = paramEmail
        resultUpdate.text = paramUpdate ? "O" : "X"
        resultInterval.text = "\(paramInterval) 분 마다"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBack(_ sender: UIButton) {
        self.dismiss(animated: true)
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
