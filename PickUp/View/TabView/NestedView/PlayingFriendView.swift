//
//  PlayingFriendView.swift
//  BallUp
//
//  Created by jimenez on 3/15/22.
//

import SwiftUI

struct PlayingFriendView: View {
    @State private var friendsUUID: String = ""
    @State private var username: String = ""
    @State var doneSearch = false
    
    var body: some View {
        ZStack {
            Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).edgesIgnoringSafeArea(.all)
            VStack{
                Text("Enter Your Friends Username")
                    .fontWeight(.semibold)
                    .padding(.top, 200)
                    .foregroundColor(Color.orange)
                TextField("UUID", text: $friendsUUID)
                    .padding()
                    .frame(width: 300, height: 50, alignment: .center)
                    .background(Color.gray)
                            
                Button {
                    doneSearch = true
                } label: {
                    Text("Submit")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .background(Color.green)
                        .cornerRadius(15)
                        .padding(.bottom, 100)
                }
                
                
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
