//
//  boton3.swift
//  challenge
//
//  Created by Ernesto Pang on 28/10/24.
//

import SwiftUI

struct boton3: View {
    @Environment(\.dismiss) var dismiss
    @State private var isLightOn = false
    @State private var intensity: Double = 0 // Controla la intensidad de la luz
    @State private var animateBounce = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Button(action: {
                    let impactFeedback = UIImpactFeedbackGenerator(style: .medium)
                    impactFeedback.impactOccurred()
                    
                    isLightOn.toggle()
                    
                    if isLightOn && intensity == 0 {
                        intensity = 25
                    }
                    
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
                    Image(isLightOn ? "focoLuz" : "foco")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350)
                        .scaleEffect(animateBounce ? 0.8 : 1.0)
                        .opacity(isLightOn ? intensity / 100 : 1)
                }
                
                Spacer()
                
                if isLightOn {
                    VStack {
                        Text("Intensidad: \(Int(intensity))%")
                        
                        HStack {
                            Button(action: {
                                if intensity > 25 {
                                    intensity -= 25
                                }
                            }) {
                                Text("-")
                                    .font(.largeTitle)
                                    .padding()
                                    .background(Color.gray.opacity(0.2))
                                    .clipShape(Circle())
                            }
                            
                            Button(action: {
                                if intensity < 100 {
                                    intensity += 25
                                }
                            }) {
                                Text("+")
                                    .font(.largeTitle)
                                    .padding()
                                    .background(Color.gray.opacity(0.2))
                                    .clipShape(Circle())
                            }
                        }
                    }
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
