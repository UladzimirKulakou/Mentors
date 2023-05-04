//
//  NotificationView.swift
//  Mentors
//
//  Created by Владимир  on 3.05.23.
//

import SwiftUI


struct NotificationView: View {

    struct Notification: Identifiable {
        let firstLine: String
        let secondLine: String
        let id = UUID()
    }

    private var notification = [Notification(firstLine: "Подтвердите созвон", secondLine: "Четверг, 12 февраля в 12:00"),
        Notification(firstLine: "Подтвердите оплату", secondLine: "Созвон был с Егор Семенов"),
        Notification(firstLine: "Подтвердите созвон", secondLine: "Четверг, 12 февраля в 13:00"),
        Notification(firstLine: "Подтвердите оплату", secondLine: "Созвон был с Иван Семенов"),
    ]



    var body: some View {
        
        ZStack {
            AppColors.backgroundgrey
                .edgesIgnoringSafeArea(.all)
            VStack {
                List {
                    ForEach(notification) { notification in
                        VStack(alignment: .leading) {
                            Text(notification.firstLine)
                                .font(.custom(AppFonts.regular, size: 14))
                            Text(notification.secondLine)
                                .font(.custom(AppFonts.regular, size: 12))
                        }
                            .foregroundColor(.white)
                            .swipeActions(allowsFullSwipe: false) { // Adds custom swipe actions
                            Button {
                                print("Muting conversation")
                            } label: {
                                Label("Mute", systemImage: "bell.slash.fill")
                            }
                                .tint(.indigo)

                            Button(role: .destructive) {
                                print("Deleting conversation")
                            } label: {
                                Label("Delete", systemImage: "trash.fill")
                            }
                        }
                    }
                        .listRowBackground(Color(red: 0.231, green: 0.251, blue: 0.314).ignoresSafeArea(.all, edges: .all)) // Sets Row color or a custom color: .listRowBackground(Color("DarkBackground"))
                    
//                     .listRowInsets(EdgeInsets())    // Removes extra padding space in rows
                    .listRowSeparator(.hidden) // Removed lines between items
                    
                }
                    .listStyle(.plain) // Removes extra spaces around the whole List
   .frame(height: CGFloat(notification.count) * CGFloat(max(44, 20 + 2 * 5)))
                Spacer()
                AppColors.backgroundgrey
                    .edgesIgnoringSafeArea(.all)
            }.padding(.top)

            

        }
        
        
        .navigationTitle("Уведомления").background(.white)
        
//            .toolbarBackground(Color(red: 0.231, green: 0.251, blue: 0.314), for: .navigationBar)
            
//            .foregroundColor(.white).background(Color(red: 0.231, green: 0.251, blue: 0.314).ignoresSafeArea(.all, edges: .all))
        



//
//        VStack{
//
//
//            List{
//                ForEach(notification, content: {notification in
//                    VStack(alignment: .leading){
//                        Text(notification.firstLine)
//                        Text(notification.secondLine)
//                    }.background(Color(red: 0.231, green: 0.251, blue: 0.314)
//                        .edgesIgnoringSafeArea(.all))
//                })
//            }.listStyle(.plain)
//                .background()
//        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
