//
//  boton2.swift
//  challenge
//
//  Created by Ernesto Pang on 28/10/24.
//

import SwiftUI

struct boton2: View {
    @Environment(\.dismiss ) var dismiss
    
    
    
    let types = ["Business", "Personal"]
    

    
    var body: some View {
        NavigationStack{
            Form {
                Text("Name")
                
                Text("Amound")
            }
            .navigationTitle("Titulo boton2")
            .toolbar{
                Button("Save") {
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    boton2()
}
