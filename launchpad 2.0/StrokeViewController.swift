//
//  StrokeViewController.swift
//  launchpad 2.0
//
//  Created by Cheuk Lun Ko on 3/3/2019.
//  Copyright © 2019 Cheuk Lun Ko. All rights reserved.
//

import UIKit
import WebKit

class StrokeViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


        let url = URL(string: "https://skishore.me/inkstone/")!
        webView.load(URLRequest(url: url))
        
    }
    
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        let scrollPoint = CGPoint(x: 0, y: webView.scrollView.contentSize.height - webView.frame.size.height)
        webView.scrollView.setContentOffset(scrollPoint, animated: false)//Set false if you doesn't want animation
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
