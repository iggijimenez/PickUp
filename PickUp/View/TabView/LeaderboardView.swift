//
//  LeaderboardView.swift
//  BallUp
//
//  Created by jimenez on 3/16/22.
//

import SwiftUI

struct LeaderboardView: View {
    var body: some View {
        NavigationView{
            
            ZStack {
                
                Color(red: 158 / 255, green: 3 / 255, blue: 29 / 255).edgesIgnoringSafeArea(.all)
                VStack{
                    Rectangle()
                        .frame(width: 300, height: 50, alignment: .center)
                        .foregroundColor(Color.black)
                    Rectangle()
                        .frame(width: 300, height: 50, alignment: .center)
                        .foregroundColor(Color.black)
                    Rectangle()
                        .frame(width: 300, height: 50, alignment: .center)
                        .foregroundColor(Color.black)
                }
                .padding(.bottom, 300)
            }
            
            .navigationBarTitle("Leaderboard").foregroundColor(.orange)
            
        }
    }
}

struct LeaderboardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardView()
    }
}
