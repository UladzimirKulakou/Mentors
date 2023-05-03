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
    @State var isPassOK: Bool = true
    @State var isEmailOK: Bool = true
   
    @State private var registrationViewIsOn = false
    @State private var recoveryPassViewIsOn = false
    @State private var mainViewIsOn = false
    @State private var activateRegistrationModalView = false
    @State private var activateRecoveryModalView = false
    @State private var activateRootLink = false
    
    var body: some View {
        NavigationView {
            ZStack {
                AppColors.backgroundgrey
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    FirstLine(text: AppTextForLines.enter)
                    HStack{
                        SecondLineText(lineText: AppTextForLines.haneNoAccaunt)

                            Button(action: {
                                activateRegistrationModalView.toggle()
                            }, label: {
                                SecondLineLabel(buttonText: AppTextForButtons.reg)
                            })
                            .sheet(isPresented: $activateRegistrationModalView, content: {
                                NavigationView {
                                    Registration(activateRegistrationModalView: $activateRegistrationModalView)
                                }
                            })
                            

                    }.padding(.vertical)
                    
                    TextFieldView(email: email, isEmailOK: false)
                        .padding(.horizontal)
                    PasswordTextField(pass: pass, isPassOK: false)
                        .padding(.horizontal)
                    

                        Button(action: {
                            activateRecoveryModalView.toggle()
                        }, label: {
                            
                            Text("Забыл пароль?")
                                .font(Font.custom(AppFonts.regular, size: 12))
                                .foregroundColor(.white)
                                .padding(.top)
                        })
                        .sheet(isPresented: $activateRecoveryModalView, content: {
                            RecoveryPass( activateRecoveryModalView: $activateRecoveryModalView)
                        })
                        
                
                    
                    Spacer()
                    
                    NavigationLink(isActive: $mainViewIsOn, destination: {
                        MainView(mainViewIsOn: $mainViewIsOn)
                    }, label: {
                        Button(action: {
                            mainViewIsOn.toggle()
                        }, label: {
                            AppButtonSmallView(buttonText: AppTextForButtons.enter)
                        })
                        
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

struct LogInView_Previews: PreviewProvider {
    @State static var text = ""
    static var previews: some View {
        LogInView()
    }
}
