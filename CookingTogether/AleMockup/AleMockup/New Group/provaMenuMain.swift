//
//  provaMenuMain.swift
//  AleMockup
//
//  Created by alessandro borrelli on 19/02/22.
//

import SwiftUI

struct provaMenuMain: View {
    

    private var spacing: CGFloat = 20
    var body: some View {
        VStack {
            Text("First Course")
                .frame(height: 36)
                .font(.system(size: 25, weight: .semibold))

            ScrollView (Axis.Set.horizontal, showsIndicators: false){
                HStack{
                    MenuTopicView(image_recipe_name: "Carbonara", recipe_name: "Carbonara")
                    MenuTopicView(image_recipe_name: "Carbonara", recipe_name: "Carbonara")
                }
            }.frame(height: 200)

            Text("Main Course")
                .frame(height: 36)
                .font(.system(size: 25, weight: .semibold))

            ScrollView(Axis.Set.horizontal) {
                HStack {
                    MenuTopicView(image_recipe_name: "Carbonara", recipe_name: "Carbonara")
                    MenuTopicView(image_recipe_name: "Carbonara", recipe_name: "Carbonara")
                }
            }

            Text("Dessert")
                .frame(height: 36)
                .font(.system(size: 25, weight: .semibold))

            ScrollView(Axis.Set.horizontal) {
                HStack {
                    MenuTopicView(image_recipe_name: "Carbonara", recipe_name: "Carbonara")
                    MenuTopicView(image_recipe_name: "Carbonara", recipe_name: "Carbonara")
                }
            }
        }
    }

}

struct provaMenuMain_Previews: PreviewProvider {
    static var previews: some View {
        provaMenuMain()
    }
}
