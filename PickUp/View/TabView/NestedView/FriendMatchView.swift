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
    
    var body: some View {
        NavigationView {
            
        ZStack {
            
            Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).edgesIgnoringSafeArea(.all)
            VStack{
                Text("You played ----")
                    .foregroundColor(Color.orange)
                HStack {
                    Text("Your Score")
                        .foregroundColor(Color.orange)
                        .font(.title)
                    Text("")
                    TextField("", text: $userScore)
                        .keyboardType(.decimalPad)
                        .frame(width: 50, height: 50, alignment: .center)
                        .background(Color.gray)
                        .foregroundColor(Color.red)
                }
                
                HStack {
                    Text("Their Score")
                        .foregroundColor(Color.orange)
                        .font(.title)
                    Text("")
                    TextField("", text: $playedUserScore)
                        .keyboardType(.decimalPad)
                        .frame(width: 50, height: 50, alignment: .center)
                        .background(Color.gray)
                        .foregroundColor(Color.red)
                }
                
                Button(action: { donePlayed = true }) {
                    Text("Done")
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
