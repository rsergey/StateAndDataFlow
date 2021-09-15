//
//  LogoutButtonView.swift
//  StateAndDataFlow
//
//  Created by Sergey on 15.09.2021.
//

import SwiftUI

struct LogoutButtonView: View {
    @EnvironmentObject var user: UserManager
//    @AppStorage("userName") private var userName = ""
//    @AppStorage("isRegister") private var isRegister = false
    
    var body: some View {
        Button(action: {DataManager.shared.deleteUser(user: user)}) {
            Text("LogOut")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(width: 200, height: 60)
        }
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}

struct LogoutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogoutButtonView()
    }
}
