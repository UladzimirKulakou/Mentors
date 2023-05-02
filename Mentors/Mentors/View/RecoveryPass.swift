//
//  RecoveryPass.swift
//  Mentors
//
//  Created by Владимир  on 1.05.23.
//

import SwiftUI

struct RecoveryPass: View {
    @State var email: String = ""
    @State var isEmailOK: Bool = true
    @Binding var activateRecoveryModalView: Bool
    
    var body: some View {
//        NavigationView{
            ZStack{
                Color(red: 0.231, green: 0.251, blue: 0.314)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    
                    FirstLine(text: AppTextForLines.registration)
                        .padding()
                    TextFieldView(email: email, isEmailOK: false)
                        .padding(.horizontal)
                   
                    Spacer()
                    
                    Button {
                        activateRecoveryModalView = false
                    } label: {
                        AppButtonSmallView(buttonText: AppTextForButtons.recovery)
                    }
                    
                }
                .padding(.vertical, 30)
                
            }
//        }
//        .navigationBarHidden(true)
//        .navigationBarTitle(Text("Home"))
//        .edgesIgnoringSafeArea([.top, .bottom])
    }
    }

struct RecoveryPass_Previews: PreviewProvider {
    @State static var activateRecoveryModalView = false
    static var previews: some View {
        RecoveryPass(activateRecoveryModalView: $activateRecoveryModalView)
    }
}
