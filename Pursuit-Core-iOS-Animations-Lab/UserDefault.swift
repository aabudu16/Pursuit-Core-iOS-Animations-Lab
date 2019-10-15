//
//  UserDefault.swift
//  Pursuit-Core-iOS-Animations-Lab
//
//  Created by Mr Wonderful on 10/14/19.
//  Copyright © 2019 Mr Wonderful. All rights reserved.
//

import UIKit
import Foundation

class UserDefaultWrapper {
    
    static let shared = UserDefaultWrapper()
    
    private let currentModeKey = "animate"
    
    
    func getAnimation()->String?{
        return UserDefaults.standard.value(forKey: currentModeKey) as? String
    }
    func store(currentMode:String){
        UserDefaults.standard.set(currentMode, forKey: currentModeKey)
    }
}
