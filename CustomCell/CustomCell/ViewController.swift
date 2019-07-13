//
//  ViewController.swift
//  CustomCell
//
//  Created by 조전형 on 2019/04/30.
//  Copyright © 2019 cho. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    var itemList = [[String:String]]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let item1 = ["name":"apple", "image":"apple.jpeg", "amount":"6", "value":"3000"]
        let item2 = ["name":"blueberry", "image":"blueberry.jpg", "amount":"10", "value":"4000"]
        let item3 = ["name":"carrot", "image":"carrot.jpg", "amount":"13", "value":"5000"]
        let item4 = ["name":"cherry", "image":"cherry.png", "amount":"1", "value":"6000"]
        let item5 = ["name":"graph", "image":"grape.jpg", "amount":"13", "value":"7000"]
        let item6 = ["name":"kiwi", "image":"kiwi.png", "amount":"2", "value":"8000"]
        let item7 = ["name":"lemon", "image":"lemon.png", "amount":"3", "value":"9000"]
        let item8 = ["name":"lime", "image":"lime.jpg", "amount":"4", "value":"10000"]
        let item9 = ["name":"meat", "image":"meat.jpg", "amount":"5", "value":"11000"]
        let item10 = ["name":"strawberry", "image":"strawberry.jpg", "amount":"7", "value":"12000"]
        let item11 = ["name":"tomato", "image":"tomato.png", "amount":"30", "value":"13000"]
        let item12 = ["name":"vegetable", "image":"vegetable.jpg", "amount":"40", "value":"14000"]
        let item13 = ["name":"watermelon", "image":"watermelon.png", "amount":"5", "value":"15000"]
        itemList = [item1, item2, item3, item4, item5, item6, item7, item8, item9, item10, item11, item12, item13]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let dicItem = itemList[indexPath.row]
        
        cell.backgroundColor = UIColor.clear
        cell.nameLabel.text = dicItem["name"]
        cell.amountLabel.text = dicItem["amount"]
        cell.valueLabel.text = dicItem["value"]
        cell.imgView.image = UIImage(named: dicItem["image"]!)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            (segue.destination as! DetailViewerController).detailData = itemList[tableView.indexPathForSelectedRow!.row]
        }
    }
}

