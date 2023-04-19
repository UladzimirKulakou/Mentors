//
//  ButtonView.swift
//  Mentors
//
//  Created by Владимир  on 5.04.23.
//

import SwiftUI

struct AppButtonsView: View {
    
    var text: String
    var font: String
    var textSize: CGFloat
    var textColor: Color
    var backgroundColor: Color
    var frameWidth: CGFloat
    var frameHeight: CGFloat
    var smallButton: Bool
    
    
    var body: some View {
        
        if smallButton{
            Text(text)
                .font(Font.custom(font, size: textSize))
                .foregroundColor(textColor)
        } else {
            Text(text)
                .font(Font.custom(font, size: textSize))
                .foregroundColor(textColor)
                .background(Rectangle().fill(backgroundColor)
                    .frame(width: frameWidth, height: frameHeight)
                    .cornerRadius(5)
                )
        }
        
    }
}

//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        AppButtonsView(text: TextForButtons.buttonEnter)
//    }
//}
