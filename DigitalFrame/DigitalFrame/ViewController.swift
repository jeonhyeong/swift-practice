//
//  ViewController.swift
//  DigitalFrame
//
//  Created by 조전형 on 2019/04/24.
//  Copyright © 2019 cho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var toggleButton: UIButton!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var speedLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        speedLabel.text = String(format: "%.2f", speedSlider.value)
        let cuteImages = [UIImage(named: "1.jpg")!,
                        UIImage(named: "2.jpg")!,
                        UIImage(named: "3.jpg")!,
                        UIImage(named: "4.jpg")!,
                        UIImage(named: "5.jpg")!,
                        UIImage(named: "6.jpg")!,
                        UIImage(named: "7.jpg")!,
                        UIImage(named: "8.jpg")!];
        imgView.animationImages = cuteImages
        imgView.animationDuration = 8
    }
    @IBAction func toggleButton(_ sender: Any) {
        if (imgView.isAnimating) {
            imgView.stopAnimating()
            toggleButton.setTitle("Start", for: UIControl.State.normal)
        } else {
            imgView.animationDuration = Double(speedSlider.value)
            imgView.startAnimating()
            toggleButton.setTitle("Stop", for: UIControl.State.normal)
        }
    }
    @IBAction func speedSliderAction(_ sender: Any) {
        imgView.animationDuration = Double(speedSlider.value)
        imgView.startAnimating()
        toggleButton.setTitle("Stop", for: UIControl.State.normal)
        speedLabel.text = String(format: "%.2f", speedSlider.value)
    }
}
