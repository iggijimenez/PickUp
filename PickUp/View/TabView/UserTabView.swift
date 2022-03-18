//
//  UserTabView.swift
//  BallUp
//
//  Created by jimenez on 3/14/22.
//

import SwiftUI

struct UserTabView: View {
    @State var showFriend = false
    @State var showAccount = false
    
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
                    .padding(.top, 25)
                    
                    Button(action: { showFriend = true }) {
                        Text("Play Friend")
                    }
                    .font(.system(size: 25))
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .cornerRadius(15)
                    .foregroundColor(Color.white)
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    .padding(.bottom, 100)
                    
                    .fullScreenCover(isPresented: $showFriend) {
                        PlayingFriendView()
                    }

                    
                }
                .navigationBarTitle("Your Profile")
                .toolbar {
                    Button(action: { showAccount = true }) {
                        Text("Account")
                    }
                    
                    .sheet(isPresented: $showAccount) {
                        Account()
                    }
                }
                
            }
        }

        
    }
}

struct UserTabView_Previews: PreviewProvider {
    static var previews: some View {
        UserTabView()
    }
}
