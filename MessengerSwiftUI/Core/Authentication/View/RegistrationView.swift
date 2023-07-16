//
//  RegistrationView.swift
//  MessengerSwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 16/07/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            Image("message")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .foregroundColor(.blue)
                .padding()
            
            VStack (spacing: 12){
                TextField("E-mail*", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .backgroundStyle(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                
                TextField("Nome completo*", text: $fullname)
                    .font(.subheadline)
                    .padding(12)
                    .backgroundStyle(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                SecureField("Senha*", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .backgroundStyle(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
            } // VStack
            
            Button {} label: {
                Text("Criar Conta")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .backgroundStyle(Color(.systemBlue))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label:  {
                HStack(spacing: 3) {
                    Text("Possui uma conta?")
                    Text("Entrar")
                        .fontWeight(.semibold)
                }
            }
            .font(.footnote)
        } // VStack Container
        .padding(.vertical)
        }
    }

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
