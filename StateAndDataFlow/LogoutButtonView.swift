//
//  LogoutButtonView.swift
//  StateAndDataFlow
//
//  Created by Sergey on 15.09.2021.
//

import SwiftUI

struct LogoutButtonView: View {
    var body: some View {
        Button(action: {}) {
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
