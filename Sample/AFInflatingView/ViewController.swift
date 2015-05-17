
//
//  ViewController.swift
//  AFInflatingView
//
//  Created by Adrián Ferreyra on 5/16/15.
//  Copyright (c) 2015 Adrián Ferreyra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inflatingView: AFInflatingView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addView(sender: AnyObject) {
        var view = UIView()
        view.backgroundColor = UIColor.greenColor()
        
        inflatingView.inflate(innerView: view)
    }

    @IBAction func removeView(sender: AnyObject) {
        inflatingView.inflate(innerView: nil)
    }
}

