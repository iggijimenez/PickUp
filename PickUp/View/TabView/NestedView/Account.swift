//
//  Account.swift
//  PickUp
//
//  Created by jimenez on 3/18/22.
//

import SwiftUI

struct Account: View {
    @ObservedObject var model = UserViewModel()
    
    var usersavedName = UserDefaults.standard.string(forKey: "UserName") ?? ""
    
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

struct Account_Previews: PreviewProvider {
    static var previews: some View {
        Account()
    }
}
