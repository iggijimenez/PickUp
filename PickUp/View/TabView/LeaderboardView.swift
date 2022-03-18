//
//  LeaderboardView.swift
//  BallUp
//
//  Created by jimenez on 3/16/22.
//

import SwiftUI

struct LeaderboardView: View {
    @ObservedObject var model = UserViewModel()
    
    var body: some View {
        NavigationView{
            
            List(model.list) { item in
                Text(item.name)
            }
            
            .navigationBarTitle("Leaderboard").foregroundColor(.orange)
            
        }
    }
    
    init() {
        model.getData()
    }
}

struct LeaderboardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardView()
    }
}
