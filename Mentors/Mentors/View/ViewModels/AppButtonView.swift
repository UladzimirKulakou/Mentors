//
//  AppButtonView.swift
//  Mentors
//
//  Created by Владимир  on 1.05.23.
//

import SwiftUI

struct AppButtonSmallView: View {
    
    var buttonText: String
    
    var body: some View {
        
        Text(buttonText)
            .font(Font.custom(AppFonts.regular, size: 18))
            .foregroundColor(.white)
            .background(Rectangle().fill(AppColors.pink)
                .frame(width: 345, height: 45)
                .cornerRadius(5)
            )

    }
}


struct AppButtonSmallView_Previews: PreviewProvider {
    static var previews: some View {
        AppButtonSmallView(buttonText: AppTextForButtons.enter)
    }
}
