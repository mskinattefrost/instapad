//
//  FeedViewController.swift
//  instapad
//
//  Created by Marvin Allan Lu on 7/14/15.
//  Copyright (c) 2015 SourcePad. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDataSource {

    @IBOutlet var feed: UITableView!
    
    var shit = [
        Gram(id: 1, username: "mark", description: "dehins padilla. :((((", picture: "https://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-15/e15/11226643_671298812974926_1073299535_n.jpg"),
        Gram(id: 2, username: "kswzl", description: "bae <3", picture: "https://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-15/e15/11333529_1606904676259446_65469637_n.jpg"),
        Gram(id: 3, username: "marbin", description: "dfgdfg", picture: "https://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-15/e15/11372529_1465758867055852_792783550_n.jpg"),
        Gram(id: 4, username: "mil", description: "dsadwerwer", picture: "https://scontent.cdninstagram.com/hphotos-xfa1/t51.2885-15/e15/11385116_688764057934116_1768372893_n.jpg"),
        Gram(id: 5, username: "thorpe", description: "!ayra", picture: "https://scontent.cdninstagram.com/hphotos-xap1/t51.2885-15/e15/11189746_563064093831796_165613730_n.jpg")
    ]
    
    var imgData: NSData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        feed.separatorStyle = UITableViewCellSeparatorStyle.None
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.shit.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let gram = self.shit[indexPath.row]
        var cell = tableView.dequeueReusableCellWithIdentifier("GramCell") as! FeedTableViewCell
        
        cell.gramImage?.image = gram.getUIImage()
        cell.username?.text = gram.username
        cell.usernameBottom?.text = gram.username
        cell.descriptionText?.text = gram.description
        
        return cell
        
    }

}

