//
//  UserStepViewNoDivider.swift
//  CT
//
//  Created by Maria Trotta on 18/02/22.
//

import SwiftUI

struct User3StepView: View {
    
    var task: Task
    @Binding var counter : Int

    var body: some View {
        

            
            Text(task.user)
                .font(.title2)
                .fontWeight(.bold)
            .foregroundColor(Color("AccentColor"))

                                

      
                HStack{
                    Spacer()
                    
                    TaskIcon(image: task.image, task: task.self)

                    Text(task.description)
                        .multilineTextAlignment(.leading)
                        .frame(width: 270, height: 100)
                        
                    
                    Spacer()
                }
                
            Spacer()
            
                Button(action:{counter = counter + 1 }){
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.primary)
                            .frame(width: 150, height: 50)
                        Text("Done")
                            .font(.title2)
                            .foregroundColor(.black)
                        
                       
            }
        }

        }
    }

