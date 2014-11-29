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
    @IBOutlet weak var timeLabel: UILabel!
    var timer = NSTimer()
    var timeArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        startButton.layer.cornerRadius = 5.0
        stopButton.layer.cornerRadius = 5.0
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "transparentNavBar"), forBarMetrics: UIBarMetrics.Default)
    }

    @IBAction func didPressedStartButton(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "updateTimeLabel", userInfo: NSDate(), repeats: true)
        startButton.hidden = true
        stopButton.hidden = false
    }
    
    func updateTimeLabel() {
        var elapsed = -(self.timer.userInfo as NSDate).timeIntervalSinceNow
        if elapsed < 60 {
            timeLabel.text = String(format: "%.0f", elapsed)
        } else {
            timeLabel.text = String(format: "%.0f:%02f", elapsed / 60, elapsed % 60)
        }
        
    }
    @IBAction func didPressedStopButton(sender: AnyObject) {
        timer.invalidate()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        stopButton.hidden = true
        startButton.hidden = false
        var savedTime = timeLabel.text
        timeArray.append(savedTime!)
        timeLabel.text = "0"
        let nextViewController = segue.destinationViewController as SavedTimesTableViewController
        nextViewController.savedTimesArray = timeArray
    }
}

