//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 8/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var firstName = ""
    @State private var textTitle = "What is your full name?"
    @State private var lastName = ""
    @State private var presentAlert = false

    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
            TextField("Type your first name here...", text: $firstName)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            TextField("Type your last name here...", text: $lastName)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            Button("Submit") {
                presentAlert = true
                textTitle = "Welcome, \(firstName) \(lastName)!"
                firstName = ""
                lastName = ""
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.cyan)
        }
        .padding()
        .alert("Thank you!", isPresented: $presentAlert, actions: {
        }, message: {
            Text("Your name has been received")
        })

    }
}

#Preview {
    ContentView()
}
