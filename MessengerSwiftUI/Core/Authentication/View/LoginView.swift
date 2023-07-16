//
//  LoginView.swift
//  MessengerSwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 01/07/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Image("message")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .foregroundColor(.blue)
                    .padding()
                
                VStack (spacing: 12){
                    TextField("Informe seu email", text: $email)
                        .font(.subheadline)
                        .padding(12)
                        .backgroundStyle(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                    SecureField("Informe sua senha", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .backgroundStyle(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                } // VStack
                
                Button {} label: {
                    Text("Esqueceu sua senha?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                } // Button Esqueceu sua senha?
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                Button {} label: {
                Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .backgroundStyle(Color(.systemBlue))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
            } // Button Login
                
                HStack {
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    Text("OK")
                
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    
                } // HStack Facebook Login
                .foregroundColor(.gray)
                
                HStack {
                    Image("facebook")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                    Text("Continue com facekook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }
                .padding(.top, 8)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                   RegistrationView()
                        .navigationBarBackButtonHidden()
                } label:  {
                    Text("Não possui uma conta?")
                    Text("Criar conta")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            } // VStack Container
            .padding(.vertical)
        } // NavigationStack
    
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
