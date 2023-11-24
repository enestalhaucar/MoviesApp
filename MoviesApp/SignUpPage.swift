//
//  SignUpPage.swift
//  MoviesApp
//
//  Created by Enes Talha Uçar  on 23.11.2023.
//

import SwiftUI
import Firebase

struct SignUpPage: View {
    @State private var email = ""
    @State private var password = ""
    @State private var repassword = ""
    @State private var isRegistered = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack(){
                
                
                
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(.white)
                    .frame(width: geometry.size.width * 5 / 6, height: geometry.size.height * 6 / 12)
                    .overlay(
                        
                        VStack(alignment: .center) {
                            Spacer()
                            Image("logo (1)")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: geometry.size.width * 4 / 5, height: geometry.size.height / 8)
                                .alignmentGuide(.top, computeValue: { dimension in
                                    dimension[.top]
                                })
                                .padding(.top,10)
                            
                            Spacer()
                            VStack(spacing: 0){
                                TextField("Enter Username",text: $email).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.bottom, 0).padding(.top,10).padding(.leading, 10).padding(.trailing, 10)
                                SecureField("Enter Password",text: $password).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.bottom, 0).padding(.top,10).padding(.leading, 10).padding(.trailing, 10)
                                SecureField("Re-Enter Password",text: $repassword).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.bottom, 0).padding(.top,10).padding(.leading, 10).padding(.trailing, 10)
                            }
                            Spacer()
                            Button("Sign Up"){
                                signUp()
                                
                            }.padding(10)
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                                .padding(.bottom,10)
                        }
                    )
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.blue)
        }
        
        
    }
    func signUp() {
        Auth.auth().createUser(withEmail: email, password: password){ (result, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
            else {
                
                
            }
            
        }
    }

}



#Preview {
    SignUpPage()
}
