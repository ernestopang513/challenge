//
//  boton3.swift
//  challenge
//
//  Created by Ernesto Pang on 28/10/24.
//

import SwiftUI

struct boton3: View {
    @Environment(\.dismiss ) var dismiss
    
    
    
    let types = ["Business", "Personal"]
    

    
    var body: some View {
        NavigationStack{
            Form {
                Text("Name")
                
                Text("Amound")
            }
            .navigationTitle("Luz")
            .toolbar{
                Button("Ok") {
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    boton3()
}
