//
//  TaskIcon.swift
//  CT
//
//  Created by Maria Trotta on 17/02/22.
//

import SwiftUI

struct TaskIcon: View {
    var image: Image
    var task: Task
    
    var body: some View {
        Image(task.taskImage)
            .resizable()
            .scaledToFit()

}

}
