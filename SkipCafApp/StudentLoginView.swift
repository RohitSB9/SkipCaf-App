//
//  StudentLoginView.swift
//  SkipCafApp
//
//  Created by Bhogal, Rohit on 2024-08-07.
//

import SwiftUI

struct StudentLoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn: Bool = false
    
    var body: some View {
        VStack {
            // Header
            Text("SkipCaf")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Text("Welcome")
                .font(.title2)
                .padding()
            
            // Login Form
            VStack(spacing: 15) {
                TextField("Username or Email", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button(action: {
                    // Authentication check
                    if username == "Student" && password == "password" {
                        isLoggedIn = true
                    } else {
                        // Handle incorrect credentials (optional)
                    }
                }) {
                    Text("Login")
                        .font(.title2)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
                
                Button(action: {
                    // Action for forgot password
                }) {
                    Text("Forgot Password?")
                        .foregroundColor(.blue)
                }
                .padding(.top, 10)
            }
            .padding()
            
            Spacer()
            
            // Footer
            Text("Skip The Line, Savour Your Time!")
                .font(.footnote)
                .padding()
        }
        .padding()
        .fullScreenCover(isPresented: $isLoggedIn) {
            StudentDashboardView()
        }
    }
}

struct StudentLoginView_Previews: PreviewProvider {
    static var previews: some View {
        StudentLoginView()
    }
}
