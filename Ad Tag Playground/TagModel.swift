//
//  TagModel.swift
//  Ad Tag Playground
//
//  Created by Harrison Borges on 6/25/16.
//  Copyright © 2016 Harrison Borges. All rights reserved.
//

import Foundation

class TagModel {
  var adTag: String
  
  init(adTag: String) {
    self.adTag = adTag
  }
  
  static let sharedInstance = TagModel(adTag: "")
}