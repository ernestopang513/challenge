//
//  boton0.swift
//  challenge
//
//  Created by Ernesto Pang on 28/10/24.
//

import SwiftUI

struct boton0: View {
    @Environment(\.dismiss ) var dismiss
    
    
    
    let types = ["Business", "Personal"]
    

    
    var body: some View {
        NavigationStack{
            Form {
                HStack{
                    Spacer()
                    Image("graphTemp")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                    Spacer()
                }
                HStack{
                    Spacer()
                    Image("lineaMatPlot")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                    Spacer()
                }
                HStack{
                    Spacer()
                    Image("barrasTemp")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                    Spacer()
                }
            }
            .navigationTitle("Reporte")
            .toolbar{
                Button("Ok") {
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    boton0()
}
