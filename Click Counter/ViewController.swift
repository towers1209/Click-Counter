//
//  ViewController.swift
//  Click Counter
//
//  Created by Loreto E. Torres on 5/3/15.
//  Copyright (c) 2015 towers1209. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var increaseButton: UIButton!
    @IBOutlet weak var decreaseButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
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

