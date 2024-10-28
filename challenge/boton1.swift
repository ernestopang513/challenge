//
//  boton1.swift
//  challenge
//
//  Created by Ernesto Pang on 24/10/24.
//

import SwiftUI

struct boton1: View {
    @Environment(\.dismiss ) var dismiss
    
    
    
    let types = ["Business", "Personal"]
    

    
    var body: some View {
        NavigationStack{
            Form {
                Text("Name")
                
                Text("Amound")
            }
            .navigationTitle("boton 1")
            .toolbar{
                Button("Save") {
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    boton1()
}
