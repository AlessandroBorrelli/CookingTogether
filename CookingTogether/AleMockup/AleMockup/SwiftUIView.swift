//
//  SwiftUIView.swift
//  AleMockup
//
//  Created by alessandro borrelli on 15/02/22.
//

import SwiftUI
import CoreData



struct SwiftUIView: View {
var songs = ["Ciao", "hello"]
    var body: some View {
        VStack {
            Text("Questa è la Famiglia")
            List {
                Text(songs[0])
                Text(songs[1])
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
