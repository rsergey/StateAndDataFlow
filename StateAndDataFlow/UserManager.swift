//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Sergey on 14.09.2021.
//

import Combine

class UserManager: ObservableObject {
    @Published var isRegister = false
    @Published var name = ""
}
