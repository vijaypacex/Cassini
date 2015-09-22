//
//  ViewController.swift
//  Cassini
//
//  Created by Apple on 16/08/15.
//  Copyright (c) 2015 pacex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let ivc = segue.destinationViewController as? ImageViewController{
            if let identifier = segue.identifier{
                switch identifier{
                    case  "Earth":
                        ivc.imageUrl = DemoURL.NASA.Earth
                    ivc.title = "Earth"
                    case "Cassini":
                        ivc.imageUrl = DemoURL.NASA.Cassini
                    ivc.title = "Cassini"
                    case "Saturn":
                        ivc.imageUrl = DemoURL.NASA.Saturn
                    ivc.title = "Saturn"
                default: break
                    
                }
            }
        }
    }
}

