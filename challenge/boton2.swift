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
            VStack {
                Spacer()
                Image("agua")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                Spacer()
                Spacer()
                Text("Amound")
            }
            .navigationTitle("Riega")
            .toolbar{
                Button("Ok") {
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    boton2()
}
