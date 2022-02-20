//
//  RecipeView.swift
//  COOKING TOGETHER
//
//  Created by Francesca Forino on 18/02/22.
//

import SwiftUI

struct RecipeView: View {
    
    @State var recipe_name : String
    @State var image_recipe_name : String
    
    var body: some View {
        VStack{
        ZStack{
            Rectangle()
                .padding(.all, 15.0)
                .foregroundColor(.white)
                .frame(width: 200, height: 200)
            
            Image("\(image_recipe_name)")
            
                .resizable()
                .scaledToFill()
                .position(x: 60, y: 50)
                .frame(width: 120.0, height: 120.0)
                .scaledToFill()
                
        }
            Text("\(recipe_name)")
                .position(x: 100, y: -40)
    }.frame(width: 200, height: 200.0)
        
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe_name: "Carbonara", image_recipe_name: "Carbonara")
    }
}
