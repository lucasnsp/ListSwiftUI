//
//  ListObjc.swift
//  List
//
//  Created by Lucas Neves dos santos pompeu on 07/11/23.
//

import SwiftUI

struct Person: Identifiable, Hashable {
    var id = UUID()
    var name: String
}

struct ListObjc: View {
    
    var listPerson = [
        Person(name: "Caio"),
        Person(name: "Felipe"),
        Person(name: "Lucas"),
    ]
    
    var body: some View {
        List(listPerson) { person in
            Text(person.name)
                .listRowBackground(Color.blue)
        }
        
        List {
            ForEach(listPerson) { person in
                Text(person.name)
            }
            .listRowBackground(Color.red)
            Button("Olá Mundo") {
                print("Action Button")
            }
        }
    }
}

#Preview {
    ListObjc()
}
