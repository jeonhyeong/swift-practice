//
//  Book.swift
//  BookManager
//
//  Created by 조전형 on 2019/04/17.
//  Copyright © 2019 cho. All rights reserved.
//

struct Book {
    var name:String
    var genre:String
    var author:String
    
    func bookPrint() {
        print("Name: \(name)")
        print("Genre: \(genre)")
        print("Author: \(author)")
        print("----------------------")
    }
}
