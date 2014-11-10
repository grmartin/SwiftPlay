//
//  ViewController.swift
//  UUIDPlay
//
//  Created by Glenn R. Martin on 11/10/14.
//  Copyright (c) 2014 Intrepid Pursuits. All rights reserved.
//

import UIKit

enum SegmentedControlIndex : Int {
    case SegmentedControlIndexTime = 0, SegmentedControlIndexRandom
}

class ViewController: UIViewController {
    
    @IBOutlet var typeSegmentControl: UISegmentedControl?
    @IBOutlet var textView: UITextView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generateTime() {
        self.textView?.text = "Time generation not yet implemented.";
    }
    
    func generateRandom() {
        self.textView?.text = NSUUID().UUIDString;
    }

    @IBAction func generateTouched(#sender: UIButton?) {
        switch SegmentedControlIndex(rawValue:(self.typeSegmentControl?.selectedSegmentIndex)!)! {
            case .SegmentedControlIndexTime:
                self.generateTime()
            case .SegmentedControlIndexRandom:
                self.generateRandom()
            default:
                NSLog("");
        }
    }
}

