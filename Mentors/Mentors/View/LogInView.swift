//
//  LogInView.swift
//  Mentors
//
//  Created by Владимир  on 26.03.23.
//

import SwiftUI

struct LogInView: View {
    
    @State var email: String = ""
    @State var pass: String = ""
    
    var body: some View {
        ZStack{
            Color(red: 0.231, green: 0.251, blue: 0.314)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Войти").font(Font.custom("Manrope-Bold", size: 22)).foregroundColor(.white)
                HStack{
                    Text("Нет аккаунта?").font(Font.custom("Manrope-Regular", size: 22)).foregroundColor(.white)
                    Button(action: {
                        
                    }, label: {
                        Text("Регистрация").font(Font.custom("Manrope-Regular", size: 22)).foregroundColor(Color(red: 0.647, green: 0.580, blue: 0.992))
                    })
                }
                HStack{
                    Image("@")
//                        .padding(5)
                    TextField("E-mail", text: $email)
                        .font(.custom("Manrope-Regular", size: 14)).foregroundColor(.black)
                        .padding(5)
                        .frame(height: 44)
                        .background(RoundedRectangle(cornerRadius: 5))
                        .foregroundColor(Color(red: 1, green: 1, blue: 1))
                        .onAppear { UITextField.appearance().clearButtonMode = .whileEditing }
                }.padding(10)
                HStack{
                    Image("Frame")
                    VStack(alignment: .leading){
                        SecureField("Пароль", text: $pass)
                            .font(.custom("Manrope-Regular", size: 14)).foregroundColor(.black)
                            .padding(5)
                            .frame(height: 44)
                            .background(RoundedRectangle(cornerRadius: 5))
                            .foregroundColor(Color(red: 1, green: 1, blue: 1))
                        Text("Пароль должен содержать минимум 8 знаков").font(Font.custom("Manrope-Regular", size: 12)).foregroundColor(Color(red: 1, green: 0.467, blue: 0.467))
                    }
                    
                    
                }.padding(10)
                
            }
            
        }
        
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
