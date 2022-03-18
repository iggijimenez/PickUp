//
//  PlayingFriendView.swift
//  BallUp
//
//  Created by jimenez on 3/15/22.
//

import SwiftUI

struct PlayingFriendView: View {
    @State private var friendsUUID: String = ""
    @State var doneSearch = false
    
    var body: some View {
        ZStack {
            Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).edgesIgnoringSafeArea(.all)
            VStack{
                Text("Enter Your Friends Unique ID")
                    .fontWeight(.semibold)
                    .padding(.top, 200)
                    .foregroundColor(Color.orange)
                TextField("UUID", text: $friendsUUID)
                    .padding()
                    .frame(width: 300, height: 50, alignment: .center)
                    .background(Color.gray)
                
                Button(action: { doneSearch = true }) {
                    Text("Done")
                }
                .font(.system(size: 25))
                .padding()
                .frame(width: 200, height: 50)
                .background(Color.orange)
                .cornerRadius(15)
                .foregroundColor(Color.white)
                .frame(maxHeight: .infinity, alignment: .bottom)
                .padding(.bottom, 300)
                
                .fullScreenCover(isPresented: $doneSearch) {
                    FriendMatchView()
                }
                
            }
        }
        
    }
}

struct PlayingFriendView_Previews: PreviewProvider {
    static var previews: some View {
        PlayingFriendView()
    }
}
