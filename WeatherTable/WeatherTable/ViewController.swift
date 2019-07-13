//
//  ViewController.swift
//  WeatherTable
//
//  Created by 조전형 on 2019/04/30.
//  Copyright © 2019 cho. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var dataList = [[String:String]]()

    override func viewDidLoad() {
        super.viewDidLoad()
        let dict1 = ["location":"korea", "weather":"rainy"]
        let dict2 = ["location":"japan", "weather":"sunny"]
        let dict3 = ["location":"china", "weather":"snow"]
        let dict4 = ["location":"america", "weather":"blizzard"]
        let dict5 = ["location":"france", "weather":"cloudy"]
        let dict6 = ["location":"spain", "weather":"rainy"]
        let dict7 = ["location":"france", "weather":"sunny"]
        let dict8 = ["location":"brazil", "weather":"snow"]
        let dict9 = ["location":"swis", "weather":"blizzard"]
        let dict10 = ["location":"germany", "weather":"cloudy"]
        let dict11 = ["location":"indo", "weather":"rainy"]
        let dict12 = ["location":"italia", "weather":"sunny"]
        let dict13 = ["location":"nepal", "weather":"snow"]
        let dict14 = ["location":"beitnam", "weather":"blizzard"]
        let dict15 = ["location":"phinland", "weather":"cloudy"]
        let dict16 = ["location":"russia", "weather":"rainy"]
        let dict17 = ["location":"island", "weather":"sunny"]
        let dict18 = ["location":"deman", "weather":"snow"]
        let dict19 = ["location":"hongkong", "weather":"blizzard"]
        dataList = [dict1, dict2, dict3, dict4, dict5, dict6, dict7, dict8, dict9, dict10, dict11, dict12, dict13, dict14, dict15, dict16, dict17, dict18, dict19]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var dicTemp = dataList[indexPath.row]
        cell.textLabel?.text = dicTemp["location"]
        let weatherStr = dicTemp["weather"]
        cell.detailTextLabel?.text = dicTemp["weather"]
        
        switch weatherStr {
        case "sunny":
            cell.imageView?.image = UIImage(named: "sunny.png")
        case "rainy":
            cell.imageView?.image = UIImage(named: "rainy.png")
        case "cloudy":
            cell.imageView?.image = UIImage(named: "cloudy.png")
        case "snow":
            cell.imageView?.image = UIImage(named: "snow.png")
        default:
            cell.imageView?.image = UIImage(named: "blizzard.png")
        }
        return cell
    }
}

