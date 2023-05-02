//
//  FirstLine.swift
//  Mentors
//
//  Created by Владимир  on 30.04.23.
//

import SwiftUI

struct FirstLine: View {
    let text: String
    var body: some View {
        Text(text)
            .font(Font.custom(AppFonts.bold, size: 22))
            .foregroundColor(.white)

    }
}

struct FirstLine_Previews: PreviewProvider {
    static var previews: some View {
        FirstLine(text: AppTextForLines.enter)
    }
}
