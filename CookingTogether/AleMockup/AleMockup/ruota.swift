//
//  ContentView.swift
//  AleMockup
//
//  Created by alessandro borrelli on 15/02/22.
//

import SwiftUI
struct ruota: View {
    @State var showpagina = false
    @State private var nomignolo: String = "Insert User"
    @State private var famiglie: [Famiglia] = [Famiglia]()
    
   
    
    var body: some View {

        
            VStack {
               
     Text("Chi sceglierà la ricetta")
    Text("Gira la ruota")

            
            Image("ruota")
                .resizable()
                .padding()
                .frame(width: 450, height: 450)
            
        
        
            
            NavigationLink(destination:  Ricette() ) {
                Text("Alle ricette")
                    .foregroundColor(Color.white)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding(20)
                    .padding(.horizontal, 80)
                    .background {
                        Color.yellow
                    }.cornerRadius(18)
                    .shadow(radius: 4, y: 2)
            }.padding(.vertical, 10)
                
        }
        
           
        
            .navigationTitle("Cooking Together")
                        .padding(.top, 18.0)
                        
                        }
            
       // .sheet(isPresented: $showpagina){
         //   Ricette()
        //}
    //    }
       
}


struct ruota_Previews: PreviewProvider {
    static var previews: some View {
        ruota()
    }
}


