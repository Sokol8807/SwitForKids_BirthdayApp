//
//  Birthday.swift
//  BirthdayTracker
//
//  Created by Ilya Sokolov on 06.06.2022.
//

import Foundation


class Birhday {
    
    var firstName: String
    var lastName: String
    var birthdate: Date
    
    init(firstName: String, lastName: String, birthdate: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthdate = birthdate
    }
}
