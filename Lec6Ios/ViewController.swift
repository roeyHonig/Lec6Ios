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
    
    
    //hi
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //we need a delegate (kind like the adapter. in swift it's just a protocol we need to implement) and a datasource
        
        
        //
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

var data = ["Savidor","Hagana","Mercaz","University"]


extension ViewController: UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return data.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            // deque cell using the id from the storyboard
            // the exclamation mark ! is me telling swift i'm a 100% sure i do have a cell and the program won't crash
            // "as" is forcing a casting, because we technicall get a UITableViewCell, but our widget (of type Label) is in the Class we creaated StationTableViewCell (which don't worry, completlly extends the UITableViewCell)
            let cell = tableView.dequeueReusableCell(withIdentifier: "station_cell") as! StationsTableViewCell
            
            cell.stationLabel.text = data[indexPath.row]
            
            return cell
        }
}
