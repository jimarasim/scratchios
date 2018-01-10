//
//  scratchClass.swift
//  scratchios
//
//  Created by JAMES K ARASIM on 6/20/17.
//  Copyright © 2017 JAMES K ARASIM. All rights reserved.
//

import Foundation

class scratchClass{
    var name:String?
    var age:Int?
    var hobbies:[String]?
    
    //TUPLE RETURN VALUE
    func setAndReturnNameAndAge(name: String,age: Int)->(String,Int){
        self.name = name
        self.age = age
        
        return(name, age)
    }
}
