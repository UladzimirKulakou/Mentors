//
//  MainView.swift
//  Mentors
//
//  Created by Владимир  on 2.04.23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 0.231, green: 0.251, blue: 0.314)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    
                    HStack{
                        Image("photo")
                        VStack(alignment: .leading){
                            Text("Ivan")
                            Text("Semenov")
                        }.font(Font.custom("Manrope-Regular", size: 12))
                            .foregroundColor(.white)
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            Image("info")
                        })
                    }.padding()
                    
                    HStack{
                        Button(action: {
                            
                        }, label: {
                            VStack {
                                Text("99+")
                                    .font(Font.custom("Manrope-Bold", size: 33))
                                    .foregroundColor(Color(red: 0.565, green: 0.231, blue: 0.827))
                                    .frame(width: 91, height: 91)
                                    .background(Circle())
                                    .foregroundColor(.white)
                                Text("Уведомлений")
                                    .font(Font.custom("Manrope-Regular", size: 18))
                                    .foregroundColor(.white)
                                
                            } //VStack
                            .frame(maxWidth: .infinity, minHeight: 240)
                            //                        .padding()
                            .background(Color(red: 0.565, green: 0.231, blue: 0.827))
                            .cornerRadius(15)
                            
                        })
                        VStack(alignment: .leading){
                            Text("Ближайшая встреча")
                                .font(Font.custom("Manrope-Bold", size: 22))
                                .foregroundColor(.white)
                            Button(action: {
                                
                            }, label: {
                                
                                VStack(alignment: .leading){
                                    HStack{
                                        VStack(alignment: .leading){
                                            Text("Ivan")
                                            Text("Semenov")
                                        }.font(Font.custom("Manrope-Regular", size: 14))
                                            .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                                        Spacer()
                                        Image("photo2")
                                    }
                                    Text("Frontend разработчик")
                                        .font(Font.custom("Manrope-Regular", size: 12))
                                        .foregroundColor(Color(red: 0.717, green: 0.717, blue: 0.717))
                                        .padding(2)
                                    VStack(alignment: .leading){
                                        Text("Четверг")
                                        Text("26 февраля")
                                    }.font(Font.custom("Manrope-Regular", size: 14))
                                        .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                                }
                                
                                .padding()
                                .background(Color(red: 0.125, green: 0.125, blue: 0.125))
                                .cornerRadius(15)
                                
                                
                                
                            })
                            
                            
                        }
                        .frame(maxWidth: .infinity, minHeight: 136)
                        
                        //                    .padding()
                        
                        
                        
                    }
                    .padding()
                    Spacer()
                    
                    
                    
                }
                .padding(.vertical, 30)
                
            }
        }
        .navigationBarHidden(true)
        .navigationBarTitle(Text("Home"))
        .edgesIgnoringSafeArea([.top, .bottom])
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
