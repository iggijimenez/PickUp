//
//  FriendMatchView.swift
//  BallUp
//
//  Created by jimenez on 3/16/22.
//

import SwiftUI

struct FriendMatchView: View {
    @State var playedUserScore: String = ""
    @State var userScore: String = ""
    @State var donePlayed: Bool = false
    @State var name = ""
    @State var points = 0
    
    var body: some View {
        NavigationView {
            
        ZStack {
            
            Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).edgesIgnoringSafeArea(.all)
            VStack{
                Text("You have played Sawyer 0 time")
                    .foregroundColor(Color.orange)
                Text("You have won 0 out of 0 games")
                    .foregroundColor(Color.orange)
                    .padding(.bottom, 50)
                Text("Select the person who Won")
                    .foregroundColor(Color.orange)
                HStack {
                    Text(name)
                }
                
                Button(action: { donePlayed = true }) {
                    Text("You")
                }
                .font(.system(size: 25))
                .padding()
                .frame(width: 200, height: 50)
                .background(Color.orange)
                .cornerRadius(15)
                .foregroundColor(Color.white)
//                .padding(.bottom, 300)
                
                .fullScreenCover(isPresented: $donePlayed) {
                    TabNavigationView()
                }
                
                Button(action: { donePlayed = true }) {
                    Text("Them")
                }
                .font(.system(size: 25))
                .padding()
                .frame(width: 200, height: 50)
                .background(Color.orange)
                .cornerRadius(15)
                .foregroundColor(Color.white)
//                .padding(.bottom, 300)
                
                .fullScreenCover(isPresented: $donePlayed) {
                    TabNavigationView()
                }

                
            }
            .padding(.bottom, 300)
            .padding(.top, 100)
        }
        }
    }
}

struct FriendMatchView_Previews: PreviewProvider {
    static var previews: some View {
        FriendMatchView()
    }
}
