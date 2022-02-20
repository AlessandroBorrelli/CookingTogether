//
//  Antipasti.swift
//  AleMockup
//
//  Created by alessandro borrelli on 16/02/22.
//

import SwiftUI

struct Antipasti: View
{
    @State var showpagina = false
    var body: some View {
        Text("Incoming Recipes")
        
//        Button("open"){
//            showpagina = true
            
            .navigationTitle("Cooking Together")
                        .padding(.top, 18.0)
      
    }
//        NavigationLink {
//            Text("ciao")
//        } label: {
//            Text("Alle ricette")
//                .foregroundColor(Color.white)
//                .font(.title3)
//                .fontWeight(.semibold)
//                .padding(20)
//                .padding(.horizontal, 80)
//                .background {
//                    Color.yellow
//                }.cornerRadius(18)
//                .shadow(radius: 4, y: 2)
//        }.padding(.vertical, 10)
    
//        .sheet(isPresented: $showpagina){
//            Ricette()
//        }}
        

}

struct Antipasti_Previews: PreviewProvider {
    static var previews: some View {
        Antipasti()
    }
}

