//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Sergey on 14.09.2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: UserManager
    @StateObject private var timer = TimeCounter()
//    @AppStorage("userName") private var userName = ""
//    @AppStorage("isRegister") private var isRegister = false
    
    var body: some View {
        VStack {
            Text("Hi, \(user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Spacer()
            TimerButtonView(timer: timer)
            Spacer()
            LogoutButtonView()
                .padding(.bottom)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
