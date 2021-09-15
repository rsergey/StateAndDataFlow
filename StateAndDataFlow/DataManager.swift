//
//  DataManager.swift
//  StateAndDataFlow
//
//  Created by Sergey on 15.09.2021.
//

import Foundation

class DataManager {
    static let shared = DataManager()
        
    private init() {}
    
    func checkUser(user: UserManager) -> Bool {
        if let userName = UserDefaults.standard.value(forKey: "userName") as? String {
            user.name = userName
        }
        if let isRegister = UserDefaults.standard.value(forKey: "isRegister") as? Bool {
            user.isRegister = isRegister
        }
        return user.isRegister
    }
    
    func saveUser(user: UserManager) {
        UserDefaults.standard.setValue(user.name, forKey: "userName")
        UserDefaults.standard.setValue(user.isRegister, forKey: "isRegister")
    }
    
    func deleteUser(user: UserManager) {
        UserDefaults.standard.setValue("", forKey: "userName")
        UserDefaults.standard.setValue(false, forKey: "isRegister")
    }
}
