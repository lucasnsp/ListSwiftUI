//
//  ContentView.swift
//  List
//
//  Created by Lucas Neves dos santos pompeu on 07/11/23.
//

import SwiftUI

struct ListBasic: View {
    
    var items = ["Elemento 1", "Elemento 2", "Elemento 3", "Elemento 4", "Elemento 5"]
    
    var body: some View {
        List(items, id: \.self) { value in
            Text(value)
        }
    }
}

#Preview {
    ListBasic()
}
