//
//  ViewController.swift
//  Lec6Ios
//
//  Created by HackerU on 09/05/2018.
//  Copyright © 2018 HackerU. All rights reserved.
//

// DateFormatter is a class which take Date Objects and can present them nicelly in a String

import UIKit

class ViewController: UIViewController{
    var stations = ["Stations","Hagana","ashalom","University"]
    
    
    
    // what does the "!" means
    // let's ask the question first, who creates an object of UIViewController?
    // in Android, did i used to constract my MainActivity?, no, ofcourse not!!!
    // the OS instantiate the UIViewController, and in swift they will initaliaze some value if i don't take care of it
    // the "!" kind set us back to java, it tells the OS, when it creates this UIViewController, to releax
    
    // var firstName: String! // I'm telling the OS to relax -> The Value will be initialiazed
    // this is called explicitlly unwrapped optional
    
    @IBOutlet weak var stationPicker: UIPickerView! {
        // property observer
        didSet{
            // once xcode sets the value of the picker -> print the picker is ready
            // think about how moderen swift is as a languge, this is like an event listener we had in java
            // swift is much more real time in its core then java
            print("The PIcker is Ready")
        }
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //we need a delegate (kind like the adapter. in swift it's just a protocol we need to implement) and a datasource
        stationPicker.delegate = self // that is, ViewController, the class we're in right now is implementing the delegate protocol throught the other
        // swift file we wrote "pickerDekegate.swift"
        stationPicker.dataSource = self  // same thing
        
        //
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

