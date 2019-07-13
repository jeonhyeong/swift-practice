//
//  DetailViewerController.swift
//  CustomCell
//
//  Created by 조전형 on 2019/04/30.
//  Copyright © 2019 cho. All rights reserved.
//

import UIKit

class DetailViewerController: UIViewController {
    var detailData = [String:String]()
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.contentMode = UIView.ContentMode.scaleAspectFill
        imgView.layer.cornerRadius = 150
        imgView.clipsToBounds = true
        imgView.image = UIImage(named: detailData["image"]!)
        
        nameLabel.text = detailData["name"]
        amountLabel.text = detailData["amount"]
        valueLabel.text = detailData["value"]
        // Do any additional setup after loading the view.
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
