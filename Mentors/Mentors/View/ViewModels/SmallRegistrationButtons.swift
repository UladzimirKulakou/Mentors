//
//  SmallRegistrationButtons.swift
//  Mentors
//
//  Created by Владимир  on 5.04.23.
//

import SwiftUI

struct SmallRegistrationButtons: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(Font.custom(Fonts.regular, size: 22))
            .foregroundColor(Colors.lightPink)
    }
}

struct SmallRegistrationButtons_Previews: PreviewProvider {
    static var previews: some View {
        SmallRegistrationButtons(text: "Регистрация")
    }
}
