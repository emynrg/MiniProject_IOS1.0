//
//  LoginPage.swift
//  MiniProjet_IOS
//
//  Created by Mohamed amine Regaia on 18/3/2023.
//

import SwiftUI

struct LoginPage: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isPasswordVisible = false
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView{
            ZStack {
                Image("bmw")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                
                VStack {
                    VStack(){
                        Image("logocarknights")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:250, height: 250)
                    }
                    
                    
                    VStack(spacing: 20) {
                        TextField("Email", text: $email)
                            .padding()
                                .background(Color.white.opacity(0.1))
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .accentColor(.white)
                                .font(.system(size: 16, weight: .medium))
                                .textContentType(.name)

                        
                        HStack {
                            if isPasswordVisible {
                                TextField("Password", text: $password)
                                    .padding()
                                        .background(Color.white.opacity(0.1))
                                        .cornerRadius(10)
                                        .foregroundColor(.white)
                                        .accentColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                        .textContentType(.name)
                            } else {
                                SecureField("Password", text: $password)
                                    .padding()
                                        .background(Color.white.opacity(0.1))
                                        .cornerRadius(10)
                                        .foregroundColor(.white)
                                        .accentColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                        .textContentType(.name)
                            }
                            Button(action: {
                                isPasswordVisible.toggle()
                            }, label: {
                                Image(systemName: isPasswordVisible ? "eye.slash" : "eye")
                                    .foregroundColor(.secondary)
                            })
                            .padding(.trailing, 8)
                        }
                        .background(RoundedRectangle(cornerRadius: 8).fill(Color.white.opacity(0.3))).frame(height: 50)
                    }
                    .padding(.horizontal, 50)
                    
                    Button(action: {
                        // Action when login button is tapped
                    }, label: {
                        Text("LOGIN")
                            .foregroundColor(.white)
                            .font(.system(size: 18))
                            .frame(width: 170, height: 50)
                            .background(Color.white.opacity(0.3))
                            .cornerRadius(10)
                    })
                    .padding(.top, 50)
                }
            }
            .navigationBarItems(
                leading: Button(action: {
                    // Ajouter l'action que vous voulez exécuter lorsqu'on clique sur le bouton
                    // Dans ce cas, nous allons simplement effectuer la navigation arrière.
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .font(.title)
                }
            )
        }
        }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}

