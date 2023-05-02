//
//  PasswordTextField.swift
//  Mentors
//
//  Created by Владимир  on 30.04.23.
//

import SwiftUI

struct PasswordTextField: View {
    @State var pass: String = ""
    var isPassOK: Bool
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("Frame").frame(width: 30, height: 30)
                SecureField("Пароль", text: $pass)
                    .font(.custom("Manrope-Regular", size: 14)).foregroundColor(.black)
                    .padding(5)
                    .frame(height: 44)
                    .background(RoundedRectangle(cornerRadius: 5))
                    .foregroundColor(Color(red: 1, green: 1, blue: 1))
            }
            Text(isPassOK ? "" : AppTextForLines.containSymbols)
                .font(Font.custom("Manrope-Regular", size: 12))
                .foregroundColor(Color(red: 1, green: 0.467, blue: 0.467))
                .padding(.leading, 37)
        }
    }
    
    struct PasswordTextField_Previews: PreviewProvider {
        static var previews: some View {
            PasswordTextField( isPassOK: false)
        }
    }
}
