//
//  ViewController.swift
//  ImageDownloader
//
//  Created by 조전형 on 2019/05/01.
//  Copyright © 2019 cho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    var downloadTask:URLSessionDownloadTask!
    
    @IBAction func downloadAction(_ sender: Any) {
        imgView.image = nil
        progressView.setProgress(0, animated: false)
        indicatorView.startAnimating()
        let sessionConfiguration = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfiguration, delegate: nil, delegateQueue: OperationQueue.main)
        let urlStr = "https://raw.githubusercontent.com/jeonhyeong/ImageDownloader/master/sample.jpg"
        downloadTask = session.downloadTask(with: URL(string: urlStr)!, completionHandler: {(data, response, error) -> Void in
            let dataTemp:Data = try! Data(contentsOf: data!)
            self.imgView.image = UIImage(data: dataTemp)
            self.indicatorView.stopAnimating()
        })
        downloadTask.resume()
    }
    
//    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
//        let dataTemp:Data = try! Data(contentsOf: location)
//        self.imgView.image = UIImage(data: dataTemp)
//        indicatorView.stopAnimating()
//    }
    
//    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
//        let progress:Float = Float(totalBytesWritten)/Float(totalBytesExpectedToWrite)
//        progressView.setProgress(progress, animated: true)
//    }
    
    @IBAction func suspendAction(_ sender: Any) {
        downloadTask.suspend()
    }
    @IBAction func resumeAction(_ sender: Any) {
        downloadTask.resume()
    }
    @IBAction func cancelAction(_ sender: Any) {
        downloadTask.cancel()
        indicatorView.stopAnimating()
        progressView.setProgress(0, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

