//
//  UserViewModel.swift
//  PickUp
//
//  Created by jimenez on 3/18/22.
//

import Foundation
import Firebase

class UserViewModel: ObservableObject {
    
    @Published var list = [User]()
    
    func addData(name: String, points: Int) {
        
        let db = Firestore.firestore()
        
        //add the document
        db.collection("users").addDocument(data: ["name":name, "points":points]) { error in
            
            if error == nil {
                
            } else {
                self.getData()
            }
        }
        
        
    }
    
    func getData() {
        
        //Get a reference
        let db = Firestore.firestore()
        
        //read the document
        db.collection("users").getDocuments { snapshot, error in
            
            //check for error
            if error == nil {
                
                if let snapshot = snapshot {
                    
                    //update the list property
                    DispatchQueue.main.async {
                        //get documents and create users
                        self.list = snapshot.documents.map { d in
                            
                            return User(id: d.documentID,
                                        name: d["name"] as? String ?? "",
                                        points: d["points"] as? Int ?? 0)
                            
                        }.sorted(by: { $0.points > $1.points })
                        
                    }
                    
                }
                
            } else {
                //handle the error
                
                
            }
            
            //
            
        }
    }
    
}
