//
//  ContentView.swift
//  SkipCafApp
//
//  Created by Bhogal, Rohit on 2024-08-07.
//

import SwiftUI

struct ContentView: View {
    @State private var showingLoginPage = false
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("SkipCaf")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            VStack(spacing: 20) {
                Button(action: {
                    showingLoginPage = true
                }) {
                    Text("Login as Student")
                        .font(.title2)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    // Action for staff login
                }) {
                    Text("Login as Staff")
                        .font(.title2)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
            
            Spacer()
        }
        .padding()
        .sheet(isPresented: $showingLoginPage) {
            StudentLoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
