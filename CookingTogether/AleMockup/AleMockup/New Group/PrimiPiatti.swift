//
//  ContentView.swift
//  COOKING TOGETHER
//
//  Created by Francesca Forino on 16/02/22.
//

import SwiftUI

struct PrimiPiatti: View {
    
    init() {
        // Use this if NavigationBarTitle is with large font
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Chewy-Regular", size: 40)!]
        
            
    }
    
    let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    
    ]
    
    var body: some View {
        
        
        
        
            
            
            
            ZStack{
                
                
                VStack() {
                    
                    Text("Choose the Recipe")
                        .font(.title)
                        .fontWeight(.medium)
                    
                        .multilineTextAlignment(.center)
                        .lineLimit(0)
                        .padding(.vertical, 3.0)
                    
                    
                    Spacer(minLength:5)
                    
                    
                    
                }
                
                .padding(.all, 5.0)
                .frame(width: 450.0, height: 700.0)
                .background(Color ("Yellow"))
            
                
                .navigationTitle("Cooking Together")
                .padding(.top, 15.0)
                .toolbar{
                    ToolbarItemGroup(){
                        
                    }
                }
                
                ScrollView{
                    NavigationLink(destination: { MainView() }) {
                LazyVGrid(columns: columns, spacing: 0){
                    ForEach((0...5), id: \.self) {item in
                        RecipeView(recipe_name: "Carbonara", image_recipe_name: "Carbonara")
//                        NavigationLink(destination: { PrimiPiatti() }) {
//                            Text("Primi piatti")
//                                .foregroundColor(Color.white)
//                                .font(.title3)
//                                .fontWeight(.semibold)
////                                .padding(20)
////                                .padding(.horizontal, 80)
////                                .frame(width: 300, height: 70, alignment: .center)
//                                .background {
//                                    Color.yellow
//                                }.cornerRadius(18)
//                                .shadow(radius: 4, y: 2)
//                        }.padding(.vertical, 10)
//                                    Image("Carbonara")
//                        
//                            .resizable()
//            
//                            .frame(width: 120.0, height: 120.0)
//                        
//                            .padding(42.0)
//                                        .cornerRadius(4)
//                        
//                                        .scaledToFill()
                    } }
                    
                }
                    
                }.position(x: 225, y: 400)

            }
            
                
            
            
            
        }
    }

    
    
    struct ViewF_Previews: PreviewProvider {
        static var previews: some View {
            PrimiPiatti()
        }
    }

