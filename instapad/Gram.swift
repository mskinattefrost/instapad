//
//  Gram.swift
//  instapad
//
//  Created by Marvin Allan Lu on 7/14/15.
//  Copyright (c) 2015 SourcePad. All rights reserved.
//

import Foundation
import UIKit

class Gram {
    var id: Int
    var username: String
    var description: String
    var picture: String
    var imgCache: NSData?

    init(id: Int, username: String, description: String, picture: String) {
        self.id = id
        self.username = username
        self.description = description
        self.picture = picture
    }
    
    func getUIImage() -> UIImage {
        if self.imgCache == nil {
            let url = NSURL(string: self.picture)
            let data = NSData(contentsOfURL: url!)
            self.imgCache = data!
            return UIImage(data: data!)!
        } else {
            return UIImage(data: self.imgCache!)!
        }
    }
}