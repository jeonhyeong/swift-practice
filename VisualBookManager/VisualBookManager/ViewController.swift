//
//  ViewController.swift
//  VisualBookManager
//
//  Created by 조전형 on 2019/04/22.
//  Copyright © 2019 cho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myBookManager = BookManager()
    @IBOutlet weak var outputTextView: UITextView!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var genreTextField: UITextField!
    
    @IBOutlet weak var countLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let book1 = Book(name: "햄릿", genre: "비극", author: "세익스피어")
        let book2 = Book(name: "누구를 위하여 종을 울리나", genre: "전쟁소설", author: "헤밍웨이")
        let book3 = Book(name: "죄와벌", genre: "사실주의", author: "톨스토이")
        
        myBookManager.registerBook(bookObject: book1)
        myBookManager.registerBook(bookObject: book2)
        myBookManager.registerBook(bookObject: book3)
        countLabel.text = "\(myBookManager.countBooks())"
    }
    
    @IBAction func searchAction(_ sender:Any) {
        let resultBook = myBookManager.searchBook(name: titleTextField.text!)
        if (resultBook != nil) {
            outputTextView.text = resultBook
        } else {
            outputTextView.text = "We dont have book that you searched"
        }
    }
    
    @IBAction func removeAction(_sender: Any) {
        myBookManager.removeBook(name: titleTextField.text!)
        outputTextView.text = "\(titleTextField.text!) removed"
        countLabel.text = "\(myBookManager.countBooks())"
    }
    
    @IBAction func registerAction(_ sender:Any) {
        var bookTemp = Book(name: titleTextField.text!, genre: genreTextField.text!, author: authorTextField.text!)
        bookTemp.name = titleTextField.text!
        bookTemp.author = authorTextField.text!
        bookTemp.genre = genreTextField.text!
        myBookManager.registerBook(bookObject: bookTemp)
        outputTextView.text = "\(titleTextField.text!) has benn registered"
        countLabel.text = "\(myBookManager.countBooks())"
    }
    @IBAction func showAllBooksAction(_ sender: Any) {
        outputTextView.text = myBookManager.showAllBooks()
    }
}

