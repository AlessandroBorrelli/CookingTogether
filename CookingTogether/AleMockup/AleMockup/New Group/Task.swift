//
//  Model.swift
//  CT
//
//  Created by Maria Trotta on 17/02/22.
//

import Foundation
import SwiftUI



struct Task: Hashable, Codable, Identifiable {
    var user: String
    var description: String
    var id: Int

    var taskImage: String
    var image: Image {
        Image(taskImage)
    }
    
}
