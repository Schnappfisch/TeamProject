//
//  SecondViewController.swift
//  Workshop_Prototype
//
//  Created by Kevin Frei on 20.10.14.
//  Copyright (c) 2014 Team Project. All rights reserved.
//

import UIKit
import WebKit

class SecondViewController: UIViewController {

   
    

    @IBOutlet weak var containerView: UIWebView!
    var webView: WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.webView = WKWebView(frame: self.containerView.frame)
        self.view.addSubview(webView!)
        
        var path = NSBundle.mainBundle().pathForResource("index", ofType: "htm")
        var request = NSURLRequest(URL: NSURL(fileURLWithPath: path!)!)
        self.webView?.loadRequest(request)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

