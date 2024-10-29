//
//  boton3.swift
//  challenge
//
//  Created by Ernesto Pang on 28/10/24.
//

import SwiftUI

struct boton3: View {
    @Environment(\.dismiss) var dismiss
    @State private var isLightOn = false // Controla si el foco está encendido o apagado
    @State private var animateBounce = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Button(action: {
                    // Genera la vibración al presionar
                    let impactFeedback = UIImpactFeedbackGenerator(style: .medium)
                    impactFeedback.impactOccurred()
                    
                    // Alterna el estado de la luz (encendido/apagado)
                    isLightOn.toggle()
                    
                    // Activa la animación de rebote
                    withAnimation(
                        Animation.easeInOut(duration: 0.1)
                            .repeatCount(3, autoreverses: true)
                    ) {
                        animateBounce = true
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        animateBounce = false
                    }
                    
                    print("Control luz")
                }) {
                    Image(isLightOn ? "focoLuz" : "foco") // Cambia la imagen según el estado
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                        .scaleEffect(animateBounce ? 0.8 : 1.0) // Efecto de rebote
                }
                
                Spacer()
                Text(isLightOn ? "Presiona para apagar la luz" : "Presiona para encender la luz")
            }
            .navigationTitle("Luz")
            .toolbar {
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
