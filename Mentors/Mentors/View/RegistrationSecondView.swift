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
    @State var isPassOK: Bool = true
    @State var isEmailOK: Bool = true
    @Binding var activateRegistrationModalView: Bool
    var body: some View {
       
            ZStack{
                Color(red: 0.231, green: 0.251, blue: 0.314)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    
                    FirstLine(text: AppTextForLines.registration)
                       
                    
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
                        Text("Пароль должен содержать минимум 8 знаков")
                            .font(Font.custom("Manrope-Regular", size: 12))
                            .foregroundColor(Color(red: 1, green: 0.467, blue: 0.467))
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
                    
                    Button {
                        activateRegistrationModalView = false
                    } label: {
                        AppButtonSmallView(buttonText: AppTextForButtons.registration)
                    }
                    
                }
                .padding(.vertical, 30)
                
            }
        .navigationBarHidden(true)
     //   .navigationBarTitle(Text("Home"))
      //  .edgesIgnoringSafeArea([.top, .bottom])
    }
}

struct RegistrationSecondView_Previews: PreviewProvider {
    @State static var activateRegistrationModalView = false
    static var previews: some View {
        RegistrationSecondView( activateRegistrationModalView: $activateRegistrationModalView)
    }
}
