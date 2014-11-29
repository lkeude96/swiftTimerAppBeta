//
//  ViewController.swift
//  swiftTimerAppBeta
//
//  Created by Eude Kinsley Lesperance on 11/29/14.
//  Copyright (c) 2014 Qlovur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        startButton.layer.cornerRadius = 5.0
        stopButton.layer.cornerRadius = 5.0
    }

    @IBAction func didPressedStartButton(sender: AnyObject) {
    }
}

