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
    var data = ["Savidor","Hagana","Mercaz","University"]
    var animals = [
        [
            Animal(name:"Fish", image: #imageLiteral(resourceName: "icons8-fish"), animalTYpe: AnimalType.Wild),
            Animal(name:"Bear", image: #imageLiteral(resourceName: "icons8-bear"), animalTYpe: AnimalType.Wild),
            Animal(name:"Elphent", image: #imageLiteral(resourceName: "icons8-elephant") , animalTYpe: AnimalType.Wild),
            ],
        [
            Animal(name:"Duck", image: #imageLiteral(resourceName: "icons8-duck"), animalTYpe: AnimalType.Farm),
            Animal(name:"Bunny", image: #imageLiteral(resourceName: "icons8-rabbit"), animalTYpe: AnimalType.Farm),
            Animal(name:"Rooster", image: #imageLiteral(resourceName: "icons8-chicken"), animalTYpe: AnimalType.Farm),
            ],
        [
            Animal(name:"Dog", image: #imageLiteral(resourceName: "icons8-dog"), animalTYpe: AnimalType.Pet),
            Animal(name:"Snake", image: #imageLiteral(resourceName: "icons8-year_of_snake"), animalTYpe: AnimalType.Pet),
            Animal(name:"Lion", image: #imageLiteral(resourceName: "icons8-house_lannister"), animalTYpe: AnimalType.Pet)
        ]
    ]
    //hi
    
    @IBOutlet weak var animalsTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // comment the following line, or edit it to display a defult seperator line
        animalsTableView.separatorColor = UIColor.clear
        
        //we need a delegate (kind like the adapter. in swift it's just a protocol we need to implement) and a datasource
        animalsTableView.delegate = self
        animalsTableView.dataSource = self
        //
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return animals.count
    }
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            //return data.count
            return animals[section].count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Wild"
        } else if section == 1 {
            return "Farm"
        } else { return "Pet"}
    }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            // deque cell using the id from the storyboard
            // the exclamation mark ! is me telling swift i'm a 100% sure i do have a cell and the program won't crash
            // "as" is forcing a casting, because we technicall get a UITableViewCell, but our widget (of type Label) is in the Class we creaated StationTableViewCell (which don't worry, completlly extends the UITableViewCell)
            let cell = tableView.dequeueReusableCell(withIdentifier: "station_cell") as! StationsTableViewCell
            
            //cell.stationLabel.text = data[indexPath.row]
            let animal = animals[indexPath.section][indexPath.row].name
            cell.stationLabel.text = animal
            cell.icon.image = animals[indexPath.section][indexPath.row].image
            return cell
        }
}
