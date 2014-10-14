//
//  ViewController.swift
//  swiftUIAlertController
//
//  Created by 李健銘 on 2014/10/8.
//  Copyright (c) 2014年 Takobear. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var button : UIButton = UIButton(frame: CGRectMake(100, 100, 100, 100))
        button.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(button)
        button.addTarget(self, action: "buttonEvent:", forControlEvents: UIControlEvents.TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func buttonEvent(sender: UIButton) {
        var alertController : UIAlertController = UIAlertController(title:"UIAlertController Title", message: "UIAlertController Message", preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        var cancelAction : UIAlertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {(action : UIAlertAction!) in
                println("\(action.title)")
            })
        
        alertController.addAction(cancelAction)
        
        self.presentViewController(alertController, animated: true, completion: {
            println("Alert showed")
        })
    }
}

