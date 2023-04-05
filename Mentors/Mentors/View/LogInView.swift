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
        NavigationView {
            ZStack {
                Colors.backgroundgrey
                    .edgesIgnoringSafeArea(.all)
                VStack {

                    TopText<MainView()>(topText: "нет", secondLineText: "да", content: MainView()).padding(.vertical)
                    HStack {
                        Image("@").frame(width: 30, height: 30)
                        TextField("E-mail", text: $email)
                            .font(.custom("Manrope-Regular", size: 14)).foregroundColor(.black)
                            .padding(5)
                            .frame(height: 44)
                            .background(RoundedRectangle(cornerRadius: 5))
                            .foregroundColor(Color(red: 1, green: 1, blue: 1))
                            .onAppear { UITextField.appearance().clearButtonMode = .whileEditing }
                    }.padding(10)
                    HStack {
                        Image("Frame").frame(width: 30, height: 30).padding(.bottom, 25)
                        VStack(alignment: .leading) {
                            SecureField("Пароль", text: $pass)
                                .font(.custom("Manrope-Regular", size: 14)).foregroundColor(.black)
                                .padding(5)
                                .frame(height: 44)
                                .background(RoundedRectangle(cornerRadius: 5))
                                .foregroundColor(Color(red: 1, green: 1, blue: 1))
                            Text("Пароль должен содержать минимум 8 знаков")
                                .font(Font.custom("Manrope-Regular", size: 12))
                                .foregroundColor(Color(red: 1, green: 0.467, blue: 0.467))
                        }

                    }.padding(10)

                    Spacer()

                    NavigationLink(destination: MainView()) { RegistrationButtonsView(text: TextForButtons.buttonEnter)
                    }

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
    static var previews: some View {
        LogInView()
    }
}
