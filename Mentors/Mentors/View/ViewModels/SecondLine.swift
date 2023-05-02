//
//  SecondLine.swift
//  Mentors
//
//  Created by Владимир  on 30.04.23.
//

import SwiftUI

struct SecondLine<Content: View>: View {
   
    var lineText: String
    var buttonText: String
    var content: Content
    
    init(lineText: String, buttonText: String, @ViewBuilder content: () -> Content) {
        self.lineText = lineText
        self.buttonText = buttonText
        self.content = content()
    }
    
    var body: some View {
        HStack{
            SecondLineText(lineText: lineText)
            NavigationLink(destination: {
                self.content
            }, label: {
                SecondLineLabel(buttonText: buttonText)
            })
        }.padding(.vertical)
    }
}

struct SecondLineText: View {
    var lineText: String
    var body: some View {
        Text(lineText).font(Font.custom(AppFonts.regular, size: 18)).foregroundColor(.white)
    }
}

struct SecondLineLabel: View {
    var buttonText: String
    var body: some View {
        Text(buttonText).font(Font.custom(AppFonts.regular, size: 18)).foregroundColor(Color(red: 0.647, green: 0.580, blue: 0.992))
    }
}

//struct SecondLine_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondLine(lineText: AppTextForLines.alreadyHaveAccaunt, buttonText: AppTextForButtons.reg) {
//            Registration()
//        }
//    }
//}
