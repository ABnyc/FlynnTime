//
//  ViewController.swift
//  FlynnTime
//
//  Created by Arpita Bhatia on 8/3/16.
//  Copyright © 2016 Arpita Bhatia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var flynnPics = ["http://67.media.tumblr.com/05b396afea731da45c32d5edf3754c2e/tumblr_o9a8dwnOhe1vr1nt8o1_1280.jpg", "http://67.media.tumblr.com/be70d0a266da77fe9ab1fc5dfa60d518/tumblr_o8pjaaDVYi1vr1nt8o1_1280.jpg","http://67.media.tumblr.com/7febfb97798ba8cb16ef03e17e44ffcf/tumblr_o8nmnhhhc71vr1nt8o1_1280.jpg", "http://66.media.tumblr.com/1ce2e30ad6d735ce4de092008ab66413/tumblr_o7ujk5rgXR1vr1nt8o1_1280.jpg",  "http://66.media.tumblr.com/e0d188ec1a32d8a11679b79d67ce8c86/tumblr_o6fyz2D1bA1vr1nt8o1_1280.jpg", "http://67.media.tumblr.com/05b396afea731da45c32d5edf3754c2e/tumblr_o9a8dwnOhe1vr1nt8o1_1280.jpg", "http://67.media.tumblr.com/be70d0a266da77fe9ab1fc5dfa60d518/tumblr_o8pjaaDVYi1vr1nt8o1_1280.jpg","http://67.media.tumblr.com/7febfb97798ba8cb16ef03e17e44ffcf/tumblr_o8nmnhhhc71vr1nt8o1_1280.jpg", "http://66.media.tumblr.com/1ce2e30ad6d735ce4de092008ab66413/tumblr_o7ujk5rgXR1vr1nt8o1_1280.jpg",  "http://66.media.tumblr.com/e0d188ec1a32d8a11679b79d67ce8c86/tumblr_o6fyz2D1bA1vr1nt8o1_1280.jpg"]
    var flynnTexts = ["Nothing like snooze time", "Where did the monument disappear ..is it behind me?", "Hello Mister President..Where is Bo?",  "Ready set Pack", "Hello there..are you talking to me ", "Nothing like snooze time", "Where did the monument disappear ..is it behind me?", "Hello Mister President..Where is Bo?",  "Ready set Pack", "Hello there..are you talking to me " ]
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return flynnPics.count
    
    }
    
   
   func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        if let cell = tableView.dequeueReusableCellWithIdentifier("FlynnCell") as? FlynnCell{
            
            var img:UIImage!
            
            let url = NSURL(string: flynnPics[indexPath.row])!
            if let data =  NSData(contentsOfURL: url) {
                img = UIImage(data: data)
            } else {
                img = UIImage(named: "flynn")
            }
            cell.configureCell(img, text: flynnTexts[indexPath.row])
            return cell
        } else {
            return FlynnCell()
        }
  
    
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

