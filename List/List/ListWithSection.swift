//
//  ListWithSection.swift
//  List
//
//  Created by Lucas Neves dos santos pompeu on 08/11/23.
//

import SwiftUI

struct ListWithSection: View {
    var body: some View {
        List {
            Section {
                Text("Minha primeira section")
            }
            Section {
                Text("Minha primeira section")
            }
            
            Section("Minha terceira section") {
                Text("Minha terceira section")
                Text("Minha terceira section")
                Text("Minha terceira section")
                Text("Minha terceira section")
            }
            
            Section {
                Text("Minha quarta section")
            } header: {
                HeaderView()
            }
        }
        .listStyle(.insetGrouped)
    }
    
    struct HeaderView: View {
        var body: some View {
            HStack(spacing: 20.0) {
                Image(systemName: "star")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundStyle(.red)
                VStack(alignment: .leading) {
                    Text("Lucas")
                    Text("Developer")
                }
            }
        }
    }
}

#Preview {
    ListWithSection()
}
