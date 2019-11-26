//
//  ContentView.swift
//  Navigation-SwiftUI
//
//  Created by Krish on 21/11/19.
//  Copyright © 2019 Krish. All rights reserved.
//

import SwiftUI


struct SomeView: View {

    @State var userName = ""
    @State var password = ""
    @State var showErrorMessage = false

    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter Username", text: $userName).textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Enter Your Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                if userName == "" || password == "" {
                    Button(action: {
                        if self.userName == ""  || self.password == "" {
                            self.showErrorMessage = true
                        }
                   }, label: {
                        Text("Login")
                    })
                } else {
                    // move on case
                    NavigationLink("Login", destination: SecondView())
                }
            }.padding(.horizontal, 20.0).alert(isPresented: $showErrorMessage) { () -> Alert in
                Alert(title: Text("Important Message"), message: Text("Please Fill all the Fields"), primaryButton: .default(Text("Ok")), secondaryButton: .destructive(Text("Cancel")))
            }
        }
    }
}

