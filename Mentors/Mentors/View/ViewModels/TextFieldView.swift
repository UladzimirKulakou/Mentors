//
//  TextFieldView.swift
//  Mentors
//
//  Created by Владимир  on 30.04.23.
//

import SwiftUI

struct TextFieldView: View {
    @State var email: String = ""
    var isEmailOK: Bool
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("@").frame(width: 30, height: 30)
                TextField("E-mail", text: $email)
                    .font(.custom(AppFonts.regular, size: 14)).foregroundColor(.black)
                    .padding(5)
                    .frame(height: 44)
                    .background(RoundedRectangle(cornerRadius: 5))
                    .foregroundColor(Color(red: 1, green: 1, blue: 1))
                    .onAppear { UITextField.appearance().clearButtonMode = .whileEditing }
            }
                Text(isEmailOK ? "" : AppTextForLines.emailIsFals)
                    .font(Font.custom("Manrope-Regular", size: 12))
                    .foregroundColor(Color(red: 1, green: 0.467, blue: 0.467))
                    .padding(.leading, 37)
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView( isEmailOK: false)
    }
}
