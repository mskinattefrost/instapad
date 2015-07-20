//
//  FeedTableViewCell.swift
//  instapad
//
//  Created by Marvin Allan Lu on 7/14/15.
//  Copyright (c) 2015 SourcePad. All rights reserved.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    
    @IBOutlet var username: UILabel!
    @IBOutlet var gramImage: UIImageView!
    @IBOutlet var usernameBottom: UILabel!
    @IBOutlet var descriptionText: UILabel!
    
//    var gramImage: UIImageView!
//    var username: UILabel!
//    var descriptionText: UILabel!
//    var gramView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        var screenSize = UIScreen.mainScreen().bounds
//        let screenWidth = screenSize.size.width
//        println(screenWidth)
//        
//        let gramWidth = screenWidth
//        
//        gramView = UIView(frame: CGRectMake(0, 0, gramWidth, gramWidth + CGFloat(100)))
//        gramView.backgroundColor = UIColor.whiteColor()
//        
//        username = UILabel(frame: CGRectMake(10, 0, gramWidth, 40))
//        descriptionText = UILabel(frame: CGRectMake(10, gramView.frame.width + 40, gramWidth, 60))
//            
//        gramImage = UIImageView(frame: CGRectMake(0, 40, gramView.frame.width, gramView.frame.width))
//        gramImage.contentMode = UIViewContentMode.ScaleAspectFit
//        
//        gramView.addSubview(username)
//        gramView.addSubview(gramImage)
//        gramView.addSubview(descriptionText)
//        
//        self.addSubview(gramView)
//
//        
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
