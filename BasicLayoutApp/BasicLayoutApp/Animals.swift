//
//  Animals.swift
//  BasicLayoutApp
//
//  Created by Denisse Verdiales on 07/07/22.
//

import Foundation

struct Animal {
    var image:String = "", name:String = "", type:String = "", info: String = ""
  
    
    init(image: String, name: String, type: String, info: String){
        self.image = image
        self.name = name
        self.type = type
        self.info = info
    }
}
