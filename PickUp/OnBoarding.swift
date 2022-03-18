//
//  OnBoarding.swift
//  PickUp
//
//  Created by jimenez on 3/18/22.
//

import SwiftUI

struct OnBoarding: View {
    @State private var username: String = ""
    
    var body: some View {
        ZStack {
            Color(red: 158 / 255, green: 3 / 255, blue: 29 / 255).edgesIgnoringSafeArea(.all)
            VStack{
                
                if !username.isEmpty {
                    Text("Welcome \(username)!")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
                Text("In order to make the app work we are going to give you a unique id, with this unique id other players can find you. We will still need your name:")
                    .multilineTextAlignment(.center)
                
                //MARK: Send this to Firebase
                TextField("Username", text: $username)
                
            }
        }
        
    }
}

struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding()
    }
}
