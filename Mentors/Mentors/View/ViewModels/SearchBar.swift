//
//  SearchBar.swift
//  Mentors
//
//  Created by Владимир  on 2.05.23.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    @State private var isEditing = false
    @State private var activateFilterView = false
    
    var body: some View {
        HStack{
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Чему хочешь научиться?", text: $text)
            }
                    .font(Font.custom(AppFonts.regular, size: 18))
                    .foregroundColor(.white)
                    
                    .onTapGesture(perform: {
                        self.isEditing = true
                    })
                    .modifier(customViewModifier(roundedCornes: 6, startColor: .orange, endColor: .purple, textColor: .white))
            
           
           

            if isEditing {
                Button {
                    self.isEditing = false
                    activateFilterView.toggle()
                } label: {
                    Image("filter").frame(width: 30, height: 30)
                        .foregroundColor(.white)
                }.sheet(isPresented: $activateFilterView, content: {
                    Text("Filter")
                })
            }
            
        }.padding(.horizontal)
    }
}

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(20)
            .shadow(color: .gray, radius: 10)
    }
}

struct customViewModifier: ViewModifier {
    var roundedCornes: CGFloat
    var startColor: Color
    var endColor: Color
    var textColor: Color

    func body(content: Content) -> some View {
        content
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [startColor, endColor]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(roundedCornes)
            //.font(.custom(AppFonts.bold, size: 12))

            .shadow(radius: 10)
    }
}


struct SearchBar_Previews: PreviewProvider {
    @State static var text = ""
    static var previews: some View {
        SearchBar(text: $text)
    }
}
