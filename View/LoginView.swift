//
//  LoginView.swift
//  PrinceSpecials
//
//  Created by mac on 27/04/25.
//

import SwiftUI

struct LoginView : View {
    @State private var showRegisterView = false
    @State private var username = ""
    @State private var password = ""
    @EnvironmentObject var auth : UserAuthentication
    
    var body: some View {
        
        NavigationStack {
            ZStack { // Background Image
                Image("Background") .resizable() .edgesIgnoringSafeArea(.all) .aspectRatio(contentMode: .fill)
                
                VStack { Image("Perfume logo") .resizable() .scaledToFit() .frame(width:550, height:260); Text("Login") .font(.largeTitle) .padding(.top,40) .foregroundColor(.black)
                    
                    TextField("Username", text: $username) .textFieldStyle(RoundedBorderTextFieldStyle()) .padding(.top,10) .frame(width:360)
                    
                    SecureField("Password", text: $password) .textFieldStyle(RoundedBorderTextFieldStyle()) .padding(.top,10) .frame(width:360)
                    
                    Button(action: { auth.login(username: username, password: password) }) { Text("Login") .frame(maxWidth: .infinity) .padding() .background(Color.blue) .foregroundColor(.white) .cornerRadius(30) } .padding()
                    
                    HStack(spacing: 40) {
                        
                        Button(action: {
                            print("Forgot Password tapped")
                        }) {
                            Text("Forgot Password?")
                                .fontWeight(.medium)
                                .foregroundColor(.black)
                        }
                        
                        Divider()
                            .frame(width: 3)
                            .frame(height: 20) // Adjust height as needed
                            .background(Color.black) // Change color if needed
                        
                        
                        
                        VStack {
                            Button(action: {
                                print("Create Account tapped (setting state)")
                                showRegisterView = true // Change state to trigger navigation
                            }) {
                                Text("Create Account").fontWeight(.medium)
                                    .foregroundColor(.black)
                            }
                            // Other views
                        }
                        .navigationDestination(isPresented: $showRegisterView) {
                            RegisterView() // Destination view linked to the state
                            
                        }
                    }
                    
                } .navigationTitle("Login") .padding() .frame(width:430)
                    .navigationDestination(isPresented: $showRegisterView) {
                        RegisterView() // Destination view linked to the state
                    } .padding(.top, -150)
            }
        }
    }}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View { LoginView() }
    }
