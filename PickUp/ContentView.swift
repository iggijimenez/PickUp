//
//  ContentView.swift
//  BallUp
//
//  Created by jimenez on 3/14/22.
//

import SwiftUI

struct ContentView: View {
    @State var shouldShowOnBoarding: Bool = true
    
    var body: some View {
        NavigationView{
            VStack{
                Text("You are in the main app")
            }
        }
        .fullScreenCover(isPresented: $shouldShowOnBoarding) {
            Welcome()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
