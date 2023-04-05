//
//  TopText.swift
//  Mentors
//
//  Created by Владимир  on 5.04.23.
//

import SwiftUI

struct TopText<Content: View>: View {
    
    var topText: String
    var secondLineText: String
    @ViewBuilder let content: Content
    
    var body: some View {
        
        Text(topText)
            .font(Font.custom(Fonts.bold, size: 22))
            .foregroundColor(.white)
            .padding(.top)
        HStack {
            Text(secondLineText).font(Font.custom(Fonts.regular, size: 22))
                .foregroundColor(.white)
            NavigationLink(destination: {
                content
            }, label: {
                    SmallRegistrationButtons(text: TextForButtons.buttonReg)
                })
        }.padding(.vertical)
    }
}

//struct TopText_Previews: PreviewProvider {
//    static var previews: some View {
//        TopText<<#Content: View#>>(topText: "Войти", secondLineText: "Нет аккаунта?", content: Registration())
//    }
//}
