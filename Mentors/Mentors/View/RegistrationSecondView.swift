//
//  RegistrationSecondView.swift
//  Mentors
//
//  Created by Владимир  on 2.04.23.
//

import SwiftUI

struct RegistrationSecondView: View {
    
    @State var email: String = ""
    @State var pass: String = ""
    
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 0.231, green: 0.251, blue: 0.314)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    
                    Text("Регистрация")
                        .font(Font.custom("Manrope-Bold", size: 22))
                        .foregroundColor(.white)
                        .padding()
                    
                    VStack(alignment: .leading){
                        Text("Имя")
                            .font(Font.custom("Manrope-Regular", size: 12))
                            .foregroundColor(Color(red: 0.717, green: 0.717, blue: 0.717))
                        TextField("Имя", text: $email)
                            .font(.custom("Manrope-Regular", size: 14)).foregroundColor(.black)
                            .padding(5)
                            .frame(height: 44)
                            .background(RoundedRectangle(cornerRadius: 5))
                            .foregroundColor(Color(red: 1, green: 1, blue: 1))
                            .onAppear { UITextField.appearance().clearButtonMode = .whileEditing }
                    }
                    .padding(.horizontal, 10)
                    
                    VStack(alignment: .leading){
                        Text("Фамилия")
                            .font(Font.custom("Manrope-Regular", size: 12))
                            .foregroundColor(Color(red: 0.717, green: 0.717, blue: 0.717))
                        TextField("Фамилия", text: $pass)
                            .font(.custom("Manrope-Regular", size: 14)).foregroundColor(.black)
                            .padding(5)
                            .frame(height: 44)
                            .background(RoundedRectangle(cornerRadius: 5))
                            .foregroundColor(Color(red: 1, green: 1, blue: 1))
                        Text("Пароль должен содержать минимум 8 знаков")
                            .font(Font.custom("Manrope-Regular", size: 12))
                            .foregroundColor(Color(red: 1, green: 0.467, blue: 0.467))
                    } .padding(.horizontal, 10)
                    
                    Spacer()
                    
                    NavigationLink(destination: {
                        MainView()
                    }, label: {
                        Text("Зарегистрироваться")
                            .font(Font.custom("Manrope-Regular", size: 18))
                            .foregroundColor(.white)
                            .background(Rectangle().fill(Color(red: 144/255, green: 59/255, blue: 211/255))
                                .frame(width: 345, height: 45)
                                .cornerRadius(5)
                            )
                    })
                    
                }
                .padding(.vertical, 30)
                
            }
        }
        .navigationBarHidden(true)
        .navigationBarTitle(Text("Home"))
        .edgesIgnoringSafeArea([.top, .bottom])
    }
}

struct RegistrationSecondView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationSecondView()
    }
}
