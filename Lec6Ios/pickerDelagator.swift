//
//  pickerDelagator.swift
//  Lec6Ios
//
//  Created by HackerU on 10/05/2018.
//  Copyright © 2018 HackerU. All rights reserved.
//

// add some code to our ViewController class
// we can add code and other things to a class we allready have
// like here, we extended the class ViewController to implement a protocoal call UIPickerViewDataSource
import Foundation
import UIKit


extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        // how many columbs in 1 raw (like the datePicker has columbe for the day , acolumbe for the hrs, the minitues etc...)
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // how many raws in every columb, because it's not like a metrix
        return stations.count
    }
    
    // this is a method from the delegate protocoal which returns a title of an item
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return stations[row]
    }
    
}


    

    

