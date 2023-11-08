//
//  ListDelete.swift
//  List
//
//  Created by Lucas Neves dos santos pompeu on 08/11/23.
//

import SwiftUI

struct ListDelete: View {
    
    @State var items = ["Elemento 1", "Elemento 2", "Elemento 3", "Elemento 4", "Elemento 5"]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { value in
                Text(value)
                    .deleteDisabled(value == "Elemento 1")
            }
            .onDelete(perform: { indexSet in
                items.remove(atOffsets: indexSet)
            })
        }
    }
}

#Preview {
    ListDelete()
}
