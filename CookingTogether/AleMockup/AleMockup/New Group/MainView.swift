//
//  MainView.swift
//  CT
//
//  Created by Maria Trotta on 17/02/22.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var modelData: ModelData
    @State var identificativo1 : Int = 1001 
    @State var identificativo2 : Int = 2001
    @State var identificativo3 : Int = 3001

    var body: some View {
        VStack{
            
            ForEach(modelData.tasks){item in
                if(item.id == identificativo1){
            User1StepView(task: item, counter: $identificativo1)
                    
                }
                                
                if(item.id == identificativo2){
            User2StepView(task: item, counter: $identificativo2)
                }
                if(item.id == identificativo3){
            User3StepView(task: item, counter: $identificativo3)
                }
                
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(ModelData())
    }
}

