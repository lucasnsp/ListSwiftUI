//
//  ListDelete2.swift
//  List
//
//  Created by Lucas Neves dos santos pompeu on 08/11/23.
//

import SwiftUI

struct ListDelete2: View {
    
    @State var items = ["Elemento 1", "Elemento 2", "Elemento 3", "Elemento 4", "Elemento 5"]
    
    var body: some View {
        List($items, id: \.self, editActions: .delete) { $value in
            Text(value)
        }
    }
}

#Preview {
    ListDelete2()
}
