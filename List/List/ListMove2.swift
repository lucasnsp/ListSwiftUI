//
//  ListMove2.swift
//  List
//
//  Created by Lucas Neves dos santos pompeu on 08/11/23.
//

import SwiftUI

struct ListMove2: View {
    
    @State var items = ["Elemento 1", "Elemento 2", "Elemento 3", "Elemento 4", "Elemento 5"]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { value in
                Text(value)
            }
            .onMove { indices, newOffset in
                items.move(fromOffsets: indices, toOffset: newOffset)
            }
        }
    }
}

#Preview {
    ListMove2()
}
