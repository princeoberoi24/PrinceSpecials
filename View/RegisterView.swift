//
//  RegisterView.swift
//  PrinceSpecials
//
//  Created by mac on 27/04/25.
//

import SwiftUI

struct RegisterView : View {
    @State private var username = ""
    @State private var password = ""
    @EnvironmentObject var auth : UserAuthentication

var body: some View { ZStack { // Background Image
    Image("Background") .resizable() .edgesIgnoringSafeArea(.all) .aspectRatio(contentMode: .fill)

    VStack { Image("Perfume logo") .resizable() .scaledToFit() .frame(width:550, height:260); Text("Register") .font(.largeTitle) .padding(.top,40) .foregroundColor(.black)

TextField("Username", text: $username) .textFieldStyle(RoundedBorderTextFieldStyle()) .padding(.top,10) .frame(width:360)

SecureField("Password", text: $password) .textFieldStyle(RoundedBorderTextFieldStyle()) .padding(.top,10) .frame(width:360)

Button(action: { auth.register(username: username, password: password) }) { Text("Register") .frame(maxWidth: .infinity) .padding() .background(Color.blue) .foregroundColor(.white) .cornerRadius(30) } .padding() } .navigationTitle("Register") .padding() .frame(width:430) } } }

struct RegisterView_Previews:
    PreviewProvider{
    static var previews: some View {
        RegisterView()
    }
}

