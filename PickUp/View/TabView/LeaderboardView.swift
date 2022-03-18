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
        VStack{
            ForEach((model.list)) { item in
                HStack{
                    Text(item.name)
                    Text("\(item.points)")
                }
            }
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
