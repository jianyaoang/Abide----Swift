//
//  ViewController.swift
//  Abide - Swift
//
//  Created by Jian Yao Ang on 11/2/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, AbideProtocol{

    var delegate: AbideProtocol?
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func onRefuseButtonPressed(sender: AnyObject) {
        
        self.delegate?.rejection(label)
        
    }
    
    
    @IBAction func onAcceptButtonPressed(sender: AnyObject) {
        
        self.delegate?.accept()
    }
    
    
    func reject() {
        label.text = "We'll see you in court"
        label.textColor = UIColor.redColor()
        self.view.backgroundColor = UIColor.blackColor()
    }
    
    func accept() {
        label.text = "What a splendid chap!"
        label.textColor = UIColor.blueColor()
        self.view.backgroundColor = UIColor.blackColor()
    }
    
    func rejection(theLabel: UILabel!){
        theLabel.text = "We'll see you in court"
        theLabel.textColor = UIColor.yellowColor();
        self.view.backgroundColor = UIColor.blackColor()

    }
}

