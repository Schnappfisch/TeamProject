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
        
        var url = NSURL(string: "http://kursdaten.teleboerse.de/teleboerse/3077/chartNG.gfn?overTime=2&amp;subProperty=0&amp;instrumentId=1618673&amp;chartType=8&amp;newsType=1&amp;highLow=1&amp;height=244&amp;width=450&amp;time=10000")
        var request = NSURLRequest(URL: url!)
        self.webView?.loadRequest(request)
        
        self.webView?.scrollView.bounces = false
        self.webView?.scrollView.clipsToBounds = false

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

