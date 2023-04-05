//
//  ButtonView.swift
//  Mentors
//
//  Created by Владимир  on 5.04.23.
//

import SwiftUI

struct RegistrationButtonsView: View {
    
    var text: String
    
    
    var body: some View {
            Text(text)
                .font(Font.custom(Fonts.regular, size: 18))
                .foregroundColor(.white)
                .background(Rectangle().fill(Colors.pink)
                    .frame(width: 345, height: 45)
                    .cornerRadius(5)
                )
        
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationButtonsView(text: TextForButtons.buttonEnter)
    }
}
