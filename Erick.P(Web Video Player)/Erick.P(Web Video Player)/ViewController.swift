//
//  ViewController.swift
//  Erick.P(Web Video Player)
//
//  Created by Erick P on 8/19/20.
//  Copyright © 2020 Erick P. All rights reserved.
//

import UIKit
import WebKit
import AVKit

class ViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    
    var myView = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let url = URL(string: "https://youtu.be/kd824LhgIUc")!
        webView.load(URLRequest(url: url))
    }


}

