//
//  ViewController.swift
//  play_grounds
//
//  Created by ChenSi on 6/12/15.
//  Copyright (c) 2015 ChenSi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var inputNumber: UITextField!
    
    @IBOutlet weak var showLabel: UILabel!
    @IBAction func submitButton(sender: AnyObject){
        var randNum = Int(arc4random_uniform(10)) + 1
        var input = inputNumber.text.toInt()
        if (input == randNum) {
            showLabel.text = "Congrats, right!"
        } else {
            showLabel.text = "Wrong! \(randNum) is right"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

