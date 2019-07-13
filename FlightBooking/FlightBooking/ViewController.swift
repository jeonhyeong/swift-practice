//
//  ViewController.swift
//  FlightBooking
//
//  Created by 조전형 on 2019/04/28.
//  Copyright © 2019 cho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var departureDateButton: UIButton!
    @IBOutlet weak var returnDateButton: UIButton!
    @IBOutlet weak var returnDateLabel: UILabel!
    @IBOutlet weak var selectDatePicker: UIDatePicker!
    var buttonTag:Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        returnDateLabel.isHidden = true
        returnDateButton.isHidden = true
        selectDatePicker.isHidden = true
    }
    @IBAction func showDatePickerAction(_ sender: UIButton) {
        if (selectDatePicker.isHidden == false) {
            selectDatePicker.isHidden = true
        } else {
            selectDatePicker.isHidden = false
        }
        buttonTag = sender.tag
    }
    @IBAction func showReturnDateAction(_ sender: UISwitch) {
        returnDateLabel.isHidden = !sender.isOn
        returnDateButton.isHidden = !sender.isOn
    }
    @IBAction func selectedDateAction(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "YY-MM-d hh:mma"
        let dateString = formatter.string(from: sender.date)
        buttonTag == 1 ? departureDateButton.setTitle(dateString, for: UIControl.State.normal) :
            returnDateButton.setTitle(dateString, for: UIControl.State.normal)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        selectDatePicker.isHidden = true
    }
}

