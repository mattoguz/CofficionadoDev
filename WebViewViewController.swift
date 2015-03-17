//
//  WebViewViewController.swift
//  CofficionadoTabbed
//
//  Created by Matt Oguz on 3/15/15.
//  Copyright (c) 2015 VentureScience. All rights reserved.
//

import UIKit

class WebViewViewController: UIViewController {

    
    @IBOutlet var WebView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var URL = NSURL(string: "http://www.tamcoffee.com")
        
        WebView.loadRequest(NSURLRequest(URL:URL!))
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}