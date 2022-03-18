//
//  Welcome.swift
//  PickUp
//
//  Created by jimenez on 3/18/22.
//

import SwiftUI

struct Welcome: View {
    @Binding var shouldShowOnBoarding: Bool
    
    var body: some View {
        ZStack {
            Color(red: 158 / 255, green: 3 / 255, blue: 29 / 255).edgesIgnoringSafeArea(.all)
            TabView{
                PageView(title: "Welcome to BallUp",
                         subtitle: "",
                         imageName: "onboard1",
                         showsDismissButton: false,
                         showsTextfieldButton: false,
                         shouldShowOnBoarding: $shouldShowOnBoarding)
                
                PageView(title: "Introduction",
                         subtitle: "We are giving you a Unique ID. The Unique ID lets other players find you. Below please Input a name for yourself",
                         imageName: "onboard2",
                         showsDismissButton: false,
                         showsTextfieldButton: true,
                         shouldShowOnBoarding: $shouldShowOnBoarding)
                
                PageView(title: "Good luck!",
                         subtitle: "Have Fun and Play Hard",
                         imageName: "onboard3",
                         showsDismissButton: true,
                         showsTextfieldButton: false,
                         shouldShowOnBoarding: $shouldShowOnBoarding)
            }
            .tabViewStyle(PageTabViewStyle())
        }
    }
}

struct PageView: View {
    let title: String
    let subtitle: String
    let imageName: String
    let showsDismissButton: Bool
    let showsTextfieldButton: Bool
    @Binding var shouldShowOnBoarding: Bool
    @State private var username: String = ""
    @State var name = ""
    @State var savedName = ""
    @ObservedObject var model = UserViewModel()
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 250)
                .padding()
            
            Text(title)
                .font(.system(size: 32))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
            
            Text(subtitle)
                .font(.system(size: 24))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(.secondaryLabel))
                .padding()
            
            if showsTextfieldButton {
                TextField("Username", text: $name)
                    .padding(10)
                    .background(Color.secondary)
                    .padding()
            }
            
            if showsDismissButton {
                Button {
                    shouldShowOnBoarding.toggle()
                    model.addData(name: name, points: 0)
                } label: {
                    Text("Get Started")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .background(Color.green)
                        .cornerRadius(15)
                }
                
            }
            
        }
    }
    
    func saveLocalData() {
        UserDefaults.standard.set(self.username, forKey: "UserName")
    }
    
    func getLocalData() {
        savedName = UserDefaults.standard.string(forKey: "UserName") ?? ""
    }
    
}
