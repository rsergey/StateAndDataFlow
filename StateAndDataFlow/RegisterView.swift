//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Sergey on 14.09.2021.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    @State private var name = ""
//    @AppStorage("userName") private var userName = ""
//    @AppStorage("isRegister") private var isRegister = false
    private let minCharacters = 3
    
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            VStack {
                TextField("Enter your name...", text: $name)
                    .multilineTextAlignment(.center)
                Button(action: registerUser) {
                    HStack {
                        Image(systemName: "checkmark.circle")
                        Text("Ok")
                    }
                }
                .disabled(name.count < minCharacters)
            }
            Text("\(name.count)")
                .padding(.horizontal, 15)
                .foregroundColor(name.count < minCharacters ? .red : .green)
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
            DataManager.shared.saveUser(user: user)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
