//
//  ViewController.swift
//  Lec6Ios
//
//  Created by HackerU on 09/05/2018.
//  Copyright © 2018 HackerU. All rights reserved.
//

// DateFormatter is a class which take Date Objects and can present them nicelly in a String

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    @IBAction func dateChamger(_ sender: UIDatePicker) {
        print(sender.date)
        //dateLabel.text = sender.date.description
        // or just use our regular way to inject values into print
        //dateLabel.text = "\(sender.date)"
        
        //but we want to use something more convinent called DateFormater
        // convert Date to String, instantiate a DateFormatter object
        let dateFormatter = DateFormatter()
        
        // initaliaze our DateFormatter Object using Enum .dateStyle
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        
        //use dateFormatter to set the label
        let dateString = dateFormatter.string(from: sender.date)
        dateLabel.text = dateString
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

