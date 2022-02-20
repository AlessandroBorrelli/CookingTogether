//
//  pagina.swift
//  AleMockup
//
//  Created by alessandro borrelli on 16/02/22.
//

import SwiftUI

struct Ricette: View {
    @State var showale = false
    @State var Antipasti = false
    
    var body: some View {
     
            VStack {
               
                NavigationLink(destination: { AleMockup.Antipasti() }) {
                    Text("Antipasti")
                        .foregroundColor(Color.white)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(20)
                        .frame(width: 300, height: 70, alignment: .center)                        .background {
                            Color.yellow
                        }.cornerRadius(18)
                        .shadow(radius: 4, y: 2)
                }.padding(.vertical, 10)
                
                NavigationLink(destination: { PrimiPiatti() }) {
                    Text("Primi piatti")
                        .foregroundColor(Color.white)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(20)
                        .padding(.horizontal, 80)
                        .frame(width: 300, height: 70, alignment: .center)
                        .background {
                            Color.yellow
                        }.cornerRadius(18)
                        .shadow(radius: 4, y: 2)
                }.padding(.vertical, 10)
                
               
                
                NavigationLink(destination: { MainView() }) {
                    Text("Secondi piatti")
                        .foregroundColor(Color.white)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(20)
                        .frame(width: 300, height: 70, alignment: .center)
                        .background {
                            Color.yellow
                        }.cornerRadius(18)
                        .shadow(radius: 4, y: 2)
                }.padding(.vertical, 10)
                
                NavigationLink(destination: { Dolci() }) {
                    Text("Dolci")
                        .foregroundColor(Color.white)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(20)
                        .frame(width: 300, height: 70, alignment: .center)
                        .background {
                            Color.yellow
                        }.cornerRadius(18)
                        .shadow(radius: 4, y: 2)
                }.padding(.vertical, 10)
                
                
            }
            .navigationTitle("Cooking Together")
                        .padding(.top, 18.0)
        
    }
    
}

struct Ricette_Previews: PreviewProvider {
    static var previews: some View {
        Ricette()
    }
}


