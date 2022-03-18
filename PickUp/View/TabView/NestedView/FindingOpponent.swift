//
//  FindingOpponent.swift
//  BallUp
//
//  Created by jimenez on 3/14/22.
//

import SwiftUI

struct FindingOpponent: View {
    var body: some View {
        ZStack {
            Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).edgesIgnoringSafeArea(.all)
            VStack{
                Text("finding opponent")
                    .font(.title)
                    .fontWeight(.heavy)
                Text("please wait")
                    .font(.title)
                    .fontWeight(.heavy)
            }
        }
    }
}

struct FindingOpponent_Previews: PreviewProvider {
    static var previews: some View {
        FindingOpponent()
    }
}
