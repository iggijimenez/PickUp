//
//  SignupView.swift
//  BallUp
//
//  Created by jimenez on 3/14/22.
//

import SwiftUI

struct SignupView : View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State var showLogin = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 158 / 255, green: 3 / 255, blue: 29 / 255).edgesIgnoringSafeArea(.all)
                VStack{
                    ZStack{
                        Capsule()
                            .frame(width: 200, height: 100, alignment: .center)
                            .foregroundColor(Color.white)
                        Capsule()
                            .frame(width: 100, height: 200, alignment: .center)
                            .foregroundColor(Color.white)
                        Image("loginlogo")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 180, alignment: .center)
                    }
                    .padding(.bottom, 320)
                }
                .navigationBarTitle("Login").foregroundColor(.orange)
                
                
                VStack{
                    Text("Username")
                        .frame(width: 380, alignment: .leading)
                        .padding(.leading, 20)
                        .foregroundColor(Color.white)
                    TextField("Username", text: $username)
                        .padding(8)
                        .background(Color.white)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    
                    Text("Password")
                        .frame(width: 380, alignment: .leading)
                        .padding(.leading, 20)
                        .foregroundColor(Color.white)
                    TextField("password", text: $password)
                        .padding(8)
                        .background(Color.white)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    
                }
                
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
                .padding(.bottom, 100)
                
                .fullScreenCover(isPresented: $showLogin) {
                    TabNavigationView()
                }
                
            }
        }
    }
}


struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
