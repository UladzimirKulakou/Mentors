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
    @State var pass2: String = ""
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 0.231, green: 0.251, blue: 0.314)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    
                    Text("Регистрация")
                        .font(Font.custom("Manrope-Bold", size: 22))
                        .foregroundColor(.white)
                        .padding(.top)
                    HStack{
                        Text("Уже есть аккаунт?").font(Font.custom("Manrope-Regular", size: 22)).foregroundColor(.white)
                        NavigationLink(destination: {
                            LogInView()
                        }, label: {
                            Text("Вход").font(Font.custom("Manrope-Regular", size: 22)).foregroundColor(Color(red: 0.647, green: 0.580, blue: 0.992))
                        })
                    }.padding(.vertical)
                    
                    //                HStack {
                    //                    Button(action: {
                    //
                    //                    }, label: {
                    //                        Text("Менти")
                    //                            .padding()
                    //                            .font(Font.custom("Manrope-Light", size: 18))
                    //                            .foregroundColor(.black)
                    //                            .background(Rectangle().fill(Color(red: 0.949, green: 0.949, blue: 0.949))
                    //                            .frame(width: 162, height: 45)
                    //                            .padding(30)
                    //                            )
                    //                    }).padding(.top, CGFloat())
                    //                        .padding(.horizontal)
                    //                    Spacer()
                    //                    Button(action: {
                    //
                    //                    }, label: {
                    //                        Text("Ментор")
                    //                            .padding()
                    //                            .font(Font.custom("Manrope-Light", size: 18))
                    //                            .foregroundColor(.black)
                    //                            .background(Rectangle().fill(Color(red: 0.949, green: 0.949, blue: 0.949))
                    //                                .frame(width: 162, height: 45)
                    //                                .padding(30)
                    //                            )
                    //                    })
                    //                }
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
                    
                    HStack{
                        Image("@").frame(width: 30, height: 30)
                        TextField("E-mail", text: $email)
                            .font(.custom("Manrope-Regular", size: 14)).foregroundColor(.black)
                            .padding(5)
                            .frame(height: 44)
                            .background(RoundedRectangle(cornerRadius: 5))
                            .foregroundColor(Color(red: 1, green: 1, blue: 1))
                            .onAppear { UITextField.appearance().clearButtonMode = .whileEditing }
                    }.padding(10)
                    HStack{
                        Image("Frame").frame(width: 30, height: 30).padding(.bottom, 25)
                        VStack(alignment: .leading){
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
                        
                    }
                    .padding(10)
                    HStack{
                        Image("Frame").frame(width: 30, height: 30).padding(.bottom, 25)
                        VStack(alignment: .leading){
                            SecureField("Пароль", text: $pass2)
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
                    
                    NavigationLink(destination: {
                        RegistrationSecondView()
                    }, label: {
                        Text("Дальше")
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

struct Registration_Previews: PreviewProvider {
    static var previews: some View {
        Registration()
    }
}
