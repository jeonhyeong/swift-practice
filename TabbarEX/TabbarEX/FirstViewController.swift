//
//  FirstViewController.swift
//  TabbarEX
//
//  Created by 조전형 on 2019/04/30.
//  Copyright © 2019 cho. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func buttonAction(_ sender: Any) {
        outputLabel.text = "push button 1"
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
