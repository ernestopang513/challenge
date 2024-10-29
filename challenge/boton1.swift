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
                
                    VStack{
                        Spacer()
                        HStack{
                            Spacer()
                            Text("Temperatura")
                            Spacer()
                            Text("20 °C")
                            Spacer()
                        }
                        Spacer()
                        
                        HStack{
                            Spacer()
                            Text("Humedad")
                            Spacer()
                            Text("20 %")
                            Spacer()
                        }
                        Spacer()
                        HStack{
                            Spacer()
                            Image("humedad")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 250)
                            Spacer()
                        }
                        Spacer()
                    }
                    
                
                
            
            .navigationTitle("Medidas")
            .toolbar{
                Button("Ok") {
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    boton1()
}
