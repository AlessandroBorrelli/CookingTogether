//
//  ContentView.swift
//  AleMockup
//
//  Created by alessandro borrelli on 15/02/22.
//

import SwiftUI



struct ContentView: View {
    @State private var nomignolo: String = ""
    @State private var membroa: String = ""
//    @State var showruota = false
//    @State var showpagina = false
//    @State var showale = false
    /* 1 DA COPIARE */
    
    @Environment(\.managedObjectContext) private var viewContext
    @State private var famiglie: [Famiglia] = [Famiglia]()
    @State private var selectedFamiglia = 0
    @State private var Selezione: Int = 0
    @State private var membri: [Membri] = [Membri]()
    private func popolareDB(){
        famiglie = CoreDataManagers.shared.GetFamiglia()
        membri = CoreDataManagers.shared.GetMembri()
    }
    

    
    
    var body: some View {
        NavigationView{
            
            
        VStack {
//            NavigationLink("ricette", destination: ruota)
            
            
            
            VStack {
                Text("FAMIGLIE")
//                    .padding(.top)
                TextField("Inserisci nome Famiglia", text: $nomignolo)
                    .padding()
                Button("Save Family")
                {
                    CoreDataManagers.shared.SaveFamiglia(title: nomignolo)
                    nomignolo=""
                    popolareDB()
                }
                
           
                
//                Button("Aggiorna")
//                {
//                    popolareDB()
//                }
//                .padding(.all)
//                .foregroundColor(.yellow)
//                .background(Color.pink)
                
//                Button("Let's Cooking"){
//                    showruota = true
                        
                
                    
                    
                }
//                Text("----------------------")
//                Text("\(selectedFamiglia)")
                
//                Button("open"){
//                    showale = true
//
//
//                }
                
                
                List {
                  
                                   ForEach(famiglie, id: \.self) { famiglia in
                                       Text("\(famiglia.nome)")
                                       let es = CoreDataManagers.shared.GetSingleMembro(_ido: famiglia)
                                      
                                       ForEach(es, id: \.self) { eso in
                                           Text("membro: \(eso.nome)").italic()
                                       }
//       **********         CAMBIARE DELETE DA FAMIGLIA A MEMBRI
                                   }.onDelete(perform: { indexSet in
                                       indexSet.forEach { index in
                                           let famiglia = famiglie[index]
                                           // delete it using Core Data Manager
                                           CoreDataManagers.shared.DeleteFamiglia(famiglia: famiglia)
                                           popolareDB()
                                       }
                                   })
                                   
                               }
                Group {
                    TextField("Inserisci nome Membro", text: $membroa)
                        .padding()
                    
                    Text("Della famiglia: ")
                    Picker(selection: $nomignolo, label: Text("pic")) {
                    
                    ForEach(famiglie, id: \.self) { famiglia in
                        Text(famiglia.nome).tag(famiglia.nome)
                            
                        }
                    }
        
                  
                 
                    Button("Salva Membro")
                    {
                        CoreDataManagers.shared.SaveMembro(title: membroa, famiglia: famiglie[selectedFamiglia])
                        popolareDB()
                    }
                }
            NavigationLink(destination: { ruota() })
                 {
                    Text("Let's Cooking")
                        .foregroundColor(Color.white)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(20)
                        .padding(.horizontal, 80)
                        .background {
                            Color.yellow
                        }.cornerRadius(18)
                        .shadow(radius: 4, y: 2)
                }
                  
                       
                
              /*  List {
                    
                    ForEach(membri, id: \.self) { membro in
                       
                            Text(membro.nome ?? "") +
                        Text(membro.relazionale ?? "")
                             }.onDelete(perform: { indexSet in
                                 indexSet.forEach { index in
                                     let membro = membri[index]
                                     // delete it using Core Data Manager
                                     CoreDm.DeleteMembro(membro: membro)
                                     popolareDB()
                                 }
                             })
                        
                    
                }
               */
                
                
              
                 .navigationTitle("Cooking Together")
                             .padding(.top, 8.0)
                             
//                             .toolbar{
//                                 ToolbarItemGroup(){
//
//                                 }
                             }

            }
            .onAppear(perform: {
                popolareDB()
            })
            

            

        
        
//            .sheet(isPresented: $showruota){
//                ruota()
//            }
//
//            /* 2 DA COPIARE */
//            .sheet(isPresented: $showpagina){
//                Ricette()
//            }
//
//            .sheet(isPresented: $showale){
//                PrimiPiatti()
//        }
        }
         

    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


