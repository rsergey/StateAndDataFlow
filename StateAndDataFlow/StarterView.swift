//
//  StarterView.swift
//  StateAndDataFlow
//
//  Created by Sergey on 14.09.2021.
//

import SwiftUI

struct StarterView: View {
    @EnvironmentObject var user: UserManager
    @AppStorage("userName") private var userName = ""
    @AppStorage("isRegister") private var isRegister = false
    
    var body: some View {
        Group {
            if DataManager.shared.checkUser(user: user) {
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(UserManager())
    }
}
