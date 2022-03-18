//
//  Welcome.swift
//  PickUp
//
//  Created by jimenez on 3/18/22.
//

import SwiftUI

struct Welcome: View {
//    @Binding var shouldShowOnBoarding: Bool
//    @State var showLogin = false
    
    var body: some View {
        ZStack {
            Color(red: 158 / 255, green: 3 / 255, blue: 29 / 255).edgesIgnoringSafeArea(.all)
            TabView{
                FirstView(showDismissButton: false)
                
                SecondView(showDismissButton: false)
                
                ThirdView(showDismissButton: true)
            }
            .tabViewStyle(PageTabViewStyle())
        }
    }
}

struct FirstView: View {
    let showDismissButton: Bool
    
    var body: some View {
        ZStack(alignment: .top){
            HStack { // << moved this up to ZStack
                Text("Welcome Player")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                    .font(.body)
            }
            .frame(minWidth: 0, maxHeight: 400, alignment: .topLeading)
            VStack(spacing: 0) {
                
                VStack {
                    
                }
            }
            .foregroundColor(Color.black.opacity(0.7))
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
            .offset(x: 0, y: 0)
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct SecondView: View {
    let showDismissButton: Bool
    
    var body: some View {
        ZStack(alignment: .top){
            HStack { // << moved this up to ZStack
                Text("")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                    .font(.body)
            }
            .frame(minWidth: 0, maxHeight: 400, alignment: .topLeading)
            VStack(spacing: 0) {
                
                VStack {
                    Spacer()
                    Text("1. In order to make the app work we are going to give you a unique id")
                        .multilineTextAlignment(.center)
                        .font(.title2)
                    Spacer()
                    Text("2. with this unique id other players can find you.")
                        .multilineTextAlignment(.center)
                        .font(.title2)
                    Spacer()
                }
            }
            .foregroundColor(Color.black.opacity(0.7))
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
            .offset(x: 0, y: 0)
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct ThirdView: View {
    let showDismissButton: Bool
    @State private var username: String = ""
    
    var body: some View {
        ZStack(alignment: .top){
            HStack { // << moved this up to ZStack
                Text("")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                    .font(.body)
            }
            .frame(minWidth: 0, maxHeight: 400, alignment: .topLeading)
            VStack(spacing: 0) {
                
                VStack {
                    Spacer()
                    Text("What would you like to be called: ")
                        .multilineTextAlignment(.center)
                        .font(.title2)
                    TextField("Username", text: $username)
                        .padding(10)
                        .background(Color.white)
                    
                    
                    if showDismissButton {
                        Button {
                            print("Hi")
                        } label: {
                            Text("Dismiss")
                                .bold()
                                .foregroundColor(Color.white)
                                .background(Color.green)
                                .frame(width: 200, height: 50)
                                .cornerRadius(6)
                        }
                        
                    }
                    
                    Spacer()
                }
            }
            .foregroundColor(Color.black.opacity(0.7))
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
            .offset(x: 0, y: 0)
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
        .edgesIgnoringSafeArea(.all)
        
    }
}


struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
