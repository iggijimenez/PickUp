//
//  ContentView.swift
//  BallUp
//
//  Created by jimenez on 3/14/22.
//

import SwiftUI

struct ContentView: View {
    @State var showLogin = false
    @State var showSign = false
    
    var body: some View {
        
        ZStack {
                Color(red: 158 / 255, green: 3 / 255, blue: 29 / 255).edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("player")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 400, alignment: .center)
                    .padding(.top, 100)
                
                Button(action: { showLogin = true }) {
                    Text("Login")
                }
                .font(.system(size: 40))
                .padding()
                .frame(width: 200, height: 50)
                .background(Color.green)
                .cornerRadius(15)
                .foregroundColor(Color.white)
                .frame(maxHeight: .infinity, alignment: .bottom)
                .padding(.bottom, 10)
                
                .fullScreenCover(isPresented: $showLogin) {
                    LoginView()
                }
                
                Button(action: { showSign = true }) {
                    Text("Sign Up")
                }
                .font(.system(size: 40))
                .padding()
                .frame(width: 200, height: 50)
                .background(Color.blue)
                .cornerRadius(15)
                .foregroundColor(Color.white)
                .padding(.bottom, 125)
                
                .fullScreenCover(isPresented: $showSign) {
                    SignupView()
                }
                
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
