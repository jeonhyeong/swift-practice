//
//  ViewController.swift
//  MiniBrowser
//
//  Created by 조전형 on 2019/04/28.
//  Copyright © 2019 cho. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate, WKNavigationDelegate {

    @IBOutlet weak var bookMarkSegmentedControl: UISegmentedControl!
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var mainWebView: WKWebView!
    @IBOutlet weak var spiningActivityIndicatorView: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mainWebView.navigationDelegate = self
        
        let initialURL = "https://www.facebook.com"
        let myURL = URL(string: initialURL)
        let myReqest = URLRequest(url: myURL!)
        mainWebView.load(myReqest)
        urlTextField.text = initialURL
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        spiningActivityIndicatorView.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        spiningActivityIndicatorView.stopAnimating()
    }

    @IBAction func bookMarkAction(_ sender: Any) {
        let bookMarkURL = bookMarkSegmentedControl.titleForSegment(at: bookMarkSegmentedControl.selectedSegmentIndex)
        let urlString = "https://www.\(bookMarkURL!).com"
        mainWebView.load(URLRequest(url: URL(string: urlString)!))
        urlTextField.text = urlString
    }
    
    @IBAction func goBackAction(_ sender: Any) {
        mainWebView.goBack()
    }
    
    @IBAction func goForwardAction(_ sender: Any) {
        mainWebView.goForward()
    }
    
    @IBAction func stopAction(_ sender: Any) {
        mainWebView.stopLoading()
    }
    
    @IBAction func reloadAction(_ sender: Any) {
        mainWebView.reload()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        var urlString = textField.text!
        if !urlString.hasPrefix("https://") {
            if urlString.hasPrefix("http://") {
                urlString.insert("s", at: urlString.index(urlString.startIndex, offsetBy: 4))
            } else {
                urlString = "https://\(urlString)"
            }
        }
        mainWebView.load(URLRequest(url: URL(string: urlString)!))
        urlTextField.text = urlString
        urlTextField.resignFirstResponder();
        return true
    }
}

