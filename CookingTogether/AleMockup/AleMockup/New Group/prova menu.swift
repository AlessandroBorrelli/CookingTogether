//
//  prova menu.swift
//  AleMockup
//
//  Created by alessandro borrelli on 19/02/22.
//

import SwiftUI

struct MenuTopicView: View {

    
    @State var image_recipe_name : String
    @State var recipe_name : String
    var body: some View {

        NavigationLink(destination: {MainView()}) {
            ZStack {
                Image(image_recipe_name)
                    .resizable()

                VStack {
                    Text(recipe_name)
                        .foregroundColor(Color.yellow)
                        .font(.system(size: 30, weight: .semibold))
                    Spacer()
                }
            }
            .frame(width: 189, height: 194)
            .cornerRadius(15)
//            .shadow(color: Color.init(black), radius: 7,x: 7, y: 7)
        }
    }
}
struct MenuTopicView_Previews: PreviewProvider {
    static var previews: some View {
        MenuTopicView(image_recipe_name: "Carbonara", recipe_name: "Carbonara")
    }
}

