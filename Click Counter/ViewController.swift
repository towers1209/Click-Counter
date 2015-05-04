//
//  ViewController.swift
//  Click Counter
//
//  Created by Loreto E. Torres on 5/3/15.
//  Copyright (c) 2015 towers1209. All rights reserved.
//

// The single-view illustrative app discussed in class contain the following:
//  1. A button
//  2. A label for displaying the number of clicks done on the button

// Lesson 1 > Experimenting with Target Action has the following instructions for experimentation:
//  1. Add an additional label and have it increment with the first
//  2. Add a decrement button
//  3. Add an action that toggles the background color of the view with each click


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var increaseButton: UIButton!
    @IBOutlet weak var decreaseButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var countLabel1: UILabel!
    var count = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        countLabel.text="\(count)" // \(count) - converts the value of count to string
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func increaseCount(sender: UIButton) {
        count+=1;
        countLabel.text="\(count)"
        countLabel1.text="\(count)"
        if (abs(count)%2==0) {
            super.view.backgroundColor=UIColor.whiteColor()
            increaseButton.setTitleColor(UIColor.greenColor(), forState: .Normal)
        }
        else {
            super.view.backgroundColor=UIColor.greenColor()
            increaseButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        }
    }

    @IBAction func decreaseCount(sender: UIButton) {
        count-=1;
        countLabel.text="\(count)"
        countLabel1.text="\(count)"
        if (abs(count)%2==0) {
            super.view.backgroundColor=UIColor.whiteColor()
            decreaseButton.setTitleColor(UIColor.redColor(), forState: .Normal)
        }
        else {
            super.view.backgroundColor=UIColor.redColor()
            decreaseButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        }
    }
}

