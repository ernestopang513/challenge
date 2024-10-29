//
//  boton2.swift
//  challenge
//
//  Created by Ernesto Pang on 28/10/24.
//

import SwiftUI

struct boton2: View {
    @Environment(\.dismiss ) var dismiss
    @State private var animateBounce = false
    
    
    let types = ["Business", "Personal"]
    

    
    var body: some View {
        NavigationStack{
            VStack {
                Spacer()
                Button(action: {
                    let impactFeedback = UIImpactFeedbackGenerator(style: .medium)
                    impactFeedback.impactOccurred()
//                    
                    withAnimation(
                        Animation.easeInOut(duration: 0.1)
                            .repeatCount(3, autoreverses: true)
                    ){
                        animateBounce = true
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5 ) {
                        animateBounce = false
                    }
                    print("Riega agua")
                }){
                    Image("agua")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                        .scaleEffect(animateBounce ? 0.8 : 1.0)
                }
                Spacer()
                Spacer()
                Text("Presiona para regar")
                
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
