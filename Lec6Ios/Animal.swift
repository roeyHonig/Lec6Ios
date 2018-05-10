//
//  Animal.swift
//  Lec6Ios
//
//  Created by HackerU on 10/05/2018.
//  Copyright © 2018 HackerU. All rights reserved.
//

import UIKit

struct Animal {
    var name: String
    var image: UIImage
    var animalTYpe: AnimalType

}

enum AnimalType {
    case Pet, Farm , Wild
}
