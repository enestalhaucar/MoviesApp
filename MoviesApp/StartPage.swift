//
//  ContentView.swift
//  MoviesApp
//
//  Created by Enes Talha Uçar  on 23.11.2023.
//

import SwiftUI

struct StartPage: View {
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack(){
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.white)
                        .frame(width: geometry.size.width * 5 / 6, height: geometry.size.height * 5 / 12)
                        .overlay(
                            
                            VStack(alignment: .center) {
                                
                                Image("logo (1)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 4 / 5, height: geometry.size.height / 5)
                                    .alignmentGuide(.top, computeValue: { dimension in
                                        dimension[.top]
                                    })
                                    .padding()
                                
                                Text("Welcome MovieApp").font(.system(size: 20)).fontWeight(.bold)
                                Spacer()
                                HStack(){
                                    
                                    NavigationLink(destination: SignInPage()) {
                                        Text("Sign In")
                                            .padding(15)
                                            .foregroundColor(.white)
                                            .background(.blue)
                                            .cornerRadius(12.0)
                                    }
                                    
                                    
                                    
                                    Spacer()
                                    NavigationLink(destination: SignUpPage()) {
                                        Text("Sign Up")
                                            .padding(15)
                                            .foregroundColor(.white)
                                            .background(.blue)
                                            .cornerRadius(12.0)
                                    }
                                    
                                }.padding()
                            }
                        )
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.blue)
            }
        }
            
        
    }
}



struct StartPage_Previews: PreviewProvider {
    static var previews: some View {
        StartPage()
    }
}
