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
        ZStack{
            Color(red: 158 / 255, green: 3 / 255, blue: 29 / 255).edgesIgnoringSafeArea(.all)
            VStack{
                List(model.list) { item in
                    HStack{
                        Text(item.name)
                        Spacer()
                        Text("\(item.points)")
                    }
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
