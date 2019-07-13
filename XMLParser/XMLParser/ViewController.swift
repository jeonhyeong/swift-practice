//
//  ViewController.swift
//  XMLParser
//
//  Created by 조전형 on 2019/04/30.
//  Copyright © 2019 cho. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, XMLParserDelegate {
    var dataList = [[String:String]]()
    var detaildata = [String:String]()
    var elementTemp:String = ""
    var blank:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let urlString = "https://raw.githubusercontent.com/jeonhyeong/XMLParser/master/weather.xml"
        guard let baseURL = URL(string: urlString) else {
            print("URL not define")
            return
        }
        guard let parser = XMLParser(contentsOf: baseURL) else {
            print("Can't read data")
            return
        }
        
        parser.delegate = self
        if !parser.parse() {
            print("parse failure")
        }
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        blank = true
        elementTemp = elementName
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        if blank == true && elementTemp != "local" && elementTemp != "weatherinfo" {
            detaildata[elementTemp] = string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        }
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "local" {
            dataList += [detaildata]
        }
        blank = false
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! WeatherTableViewCell
        var dictemp = dataList[indexPath.row]
        cell.countryLabel.text = dictemp["country"]
        let weatherStr = dictemp["weather"]
        cell.weatherLabel.text = weatherStr
        cell.temperatureLabel.text = dictemp["temperature"]
        
        if weatherStr == "맑음" {
            cell.imgView.image = UIImage(named: "sunny.png")
        } else if weatherStr == "비" {
            cell.imgView.image = UIImage(named: "rainy.png")
        } else if weatherStr == "흐림" {
            cell.imgView.image = UIImage(named: "cloudy.png")
        } else if weatherStr == "눈" {
            cell.imgView.image = UIImage(named: "snow.png")
        } else if weatherStr == "우박" {
            cell.imgView.image = UIImage(named: "blizzard.png")
        }
        return cell
    }
}

