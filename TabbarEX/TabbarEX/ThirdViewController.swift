//
//  ThirdViewController.swift
//  TabbarEX
//
//  Created by 조전형 on 2019/04/30.
//  Copyright © 2019 cho. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var thirdLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        thirdLabel.text = "push button 3"
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
