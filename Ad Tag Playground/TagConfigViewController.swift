//
//  TagConfigViewController.swift
//  Ad Tag Playground
//
//  Created by Harrison Borges on 6/24/16.
//  Copyright © 2016 Harrison Borges. All rights reserved.
//

import UIKit

class TagConfigViewController: UIViewController {
  @IBOutlet var tagString: UITextView!
  @IBOutlet var tagUrl: UITextField!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  @IBAction func saveTagString(sender: AnyObject) {
    TagModel.sharedInstance.adTag = tagString.text!
    NSLog(TagModel.sharedInstance.adTag)
  }
  
//  TODO: Hit tags api and fetch ad tag
//    - v1 can accept a url (for API requests that means auth in the url)
  @IBAction func fetchTagFromUrl(sender: AnyObject) {
//    let url: NSURL = NSURL(string: adTagTextField.text!)!
//    let request: NSURLRequest = NSURLRequest(URL: url)
  }
}

