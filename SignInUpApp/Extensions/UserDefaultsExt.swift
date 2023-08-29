//
//  UserDefaultsExt.swift
//  SignInUpApp
//
//  Created by Мартынов Евгений on 29.08.23.
//

import Foundation

extension UserDefaults {
    
    /// CaseIterable - протокол, позволяющий enum (Keys) превратить в массив типа [String]
    enum Keys: String, CaseIterable {
        case email
        case name
        case password
    }
    
    func reset() {
        let allCases = Keys.allCases
        allCases.forEach {
            removeObject(forKey: $0.rawValue)
        }
    }
    
}
