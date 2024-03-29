//
//  FirstViewController.swift
//  Workshop_Prototype
//
//  Created by Kevin Frei on 20.10.14.
//  Copyright (c) 2014 Team Project. All rights reserved.
//

import UIKit
import WebKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var containerView: UIWebView!
    var webView: WKWebView?
    
    override func loadView() {
        super.loadView()
        self.webView = WKWebView(frame: self.containerView!.frame)
        self.view.addSubview(webView!)
        self.webView?.reload()
        
       containerView.backgroundColor = UIColor.blueColor()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var url = NSURL(string: "https://chart.finance.yahoo.com/z?s=YHOO&amp;t=1y&amp;q=&amp;l=&amp;z=l&amp;a=v&amp;p=s&amp;lang=de-DE&amp;region=DE")
        var request = NSURLRequest(URL: url!)
        self.webView?.loadRequest(request)
        
        self.webView?.scrollView.scrollEnabled = true
        self.webView?.scrollView.bounces = false
        self.webView?.scrollView.multipleTouchEnabled = false
    
        self.webView?.scrollView.clipsToBounds = false // IMPORTANT!!!
        
        
    }
    
    
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

