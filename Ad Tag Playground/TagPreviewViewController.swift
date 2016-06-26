//
//  TagPreviewViewController.swift
//  Ad Tag Playground
//
//  Created by Harrison Borges on 6/25/16.
//  Copyright © 2016 Harrison Borges. All rights reserved.
//

import UIKit

class TagPreviewViewController: UIViewController, UIWebViewDelegate {
  @IBOutlet weak var bannerFrame: UIWebView!
  @IBOutlet var panelFrame: UIWebView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    bannerFrame.delegate = self
    previewAdTag()
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  func previewAdTag() {
    let tagString = TagModel.sharedInstance.adTag
    bannerFrame.loadHTMLString(tagString, baseURL: nil)
  }
  
  func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
    
    // Open calls to expanded.html in panel frame
    if navigationType == UIWebViewNavigationType.LinkClicked {
      if request.URL?.absoluteString.rangeOfString("expanded.html") != nil {
        panelFrame.loadRequest(request)
        return false
      }
    }
    
    return true
  }
}


