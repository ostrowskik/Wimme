//
//  RegisterDbInput.swift
//  withMe_alpha
//
//  Created by Młody-MBP on 10.11.2017.
//  Copyright © 2017 Młody-MBP. All rights reserved.
//

import Foundation
import FirebaseDatabase

class RegisterDbInput {
    
    static func addNewRecord(usrname: String,fname: String, lname: String, email: String, pass: String)
    {
        var ref:DatabaseReference!
        ref = Database.database().reference()
        if(usrname != "" && fname != "" && lname != "" && email != "" && pass != ""){
            let refUserList = ref.child("usersList")
            let refUsers = refUserList.child(usrname).childByAutoId()
            let newUserData = [
                "username": usrname,
                "firstname": fname,
                "lastname": lname,
                "email": email,
                "password": pass
            ]
            refUsers.setValue(newUserData)
        }
    }
}
