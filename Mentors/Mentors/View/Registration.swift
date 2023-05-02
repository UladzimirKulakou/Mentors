//
//  Registration.swift
//  Mentors
//
//  Created by Владимир  on 30.03.23.
//

import SwiftUI

struct Registration: View {
    
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
                    
                    FirstLine(text: AppTextForButtons.reg)
                    
                    HStack{
                        SecondLineText(lineText: AppTextForLines.alreadyHaveAccaunt)

                            Button {
                                activateRegistrationModalView = false
                            } label: {
                                SecondLineLabel(buttonText: AppTextForButtons.enter)
                            }
                            
                    }.padding(.vertical)
                    
                    HStack{
                        Button(action: {
                            
                        }) {
                            Text("Менти")
                                .font(Font.custom("Manrope-Light", size: 18))
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, minHeight: 3)
                                .padding(10)
                                .background(.white)
                                .cornerRadius(5)
                        }
                        Button(action: {
                            
                        }) {
                            Text("Ментор")
                                .font(Font.custom("Manrope-Light", size: 18))
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, minHeight: 3)
                                .padding(10)
                                .background(.white)
                                .cornerRadius(5)
                        }
                    }.padding()
                    
                    TextFieldView(isEmailOK: true).padding(.horizontal)
                    PasswordTextField(isPassOK: true).padding(.horizontal)
                    PasswordTextField(isPassOK: true).padding(.horizontal)
                    
                    Spacer()
                    
                    NavigationLink(destination: {
                        RegistrationSecondView(activateRegistrationModalView: $activateRegistrationModalView)
                    }, label: {
                        AppButtonSmallView(buttonText: AppTextForButtons.further)
                    })
                    
                }
                .padding(.vertical, 30)
                
            }

    }
}

struct Registration_Previews: PreviewProvider {
    @State static var activateRegistrationModalView = false
    static var previews: some View {
        Registration(activateRegistrationModalView: $activateRegistrationModalView)
    }
}
