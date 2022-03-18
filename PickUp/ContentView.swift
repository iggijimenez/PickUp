//
//  ContentView.swift
//  BallUp
//
//  Created by jimenez on 3/14/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("shouldShowOnBoarding") var shouldShowOnBoarding: Bool = true
    
    var body: some View {
        NavigationView{
            VStack{
                TabNavigationView()
            }
        }
        .fullScreenCover(isPresented: $shouldShowOnBoarding) {
            Welcome(shouldShowOnBoarding: $shouldShowOnBoarding)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
