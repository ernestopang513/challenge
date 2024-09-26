


import SwiftUI
import SceneKit



struct USDZView: UIViewRepresentable {
    let modelName: String
    
    
    func makeUIView(context: Context) -> SCNView {
            let sceneView = SCNView()
            
            // Cargar la escena con el modelo USDZ
            let scene = SCNScene(named: "\(modelName).usdz")!

            // Añadir luz ambiental
            let ambientLight = SCNLight()
            ambientLight.type = .ambient // Tipo de luz ambiental
            ambientLight.color = UIColor.white // Color de la luz
            let ambientLightNode = SCNNode()
            ambientLightNode.light = ambientLight
            scene.rootNode.addChildNode(ambientLightNode)

            
            // Configurar la vista de la escena
            sceneView.scene = scene
            sceneView.allowsCameraControl = true // Permitir el control de la cámara
            sceneView.showsStatistics = false // Mostrar estadísticas de la escena
            sceneView.backgroundColor = UIColor.clear // Fondo transparente

            return sceneView
        }
    
    func updateUIView(_ uiView: SCNView, context: Context) {
        // Actualizaciones de la vista si es necesario
    }
}

struct ContentView: View {
    
    var a: (Int) -> Int = { _ in
            print("hola")
        return 5
    }
    
    var body: some View {
        VStack {
            // Cambia "Earth" por el nombre de tu archivo USDZ sin la extensión
            USDZView(modelName: "Earth")
                .frame(height: 400) // Establecer altura de la vista
                .edgesIgnoringSafeArea(.all) // Ignorar áreas seguras
            Text("Modelo Earth Cargado")
                .font(.headline)
                .padding()
            ScrollView{
                VStack {
                    Button{} label: {
                        Text("Reporte")
                            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                            .foregroundColor(.black)
                    }
                    .background(.thinMaterial)
//                    .padding(.bottom, 30)
                    Button{} label: {
                        Text("Medidas")
                            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                            .foregroundColor(.black)
                    }
                    .background(.thinMaterial)
                    
                    Button{} label: {
                        Text("Medidas")
                            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                            .foregroundColor(.black)
                    }
                    .background(.thinMaterial)
                    Button{} label: {
                        Text("Medidas")
                            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                            .foregroundColor(.black)
                    }
                    .background(.thinMaterial)
                }
//                Spacer()
            }
//            .padding(.top, 30)
            //        .padding()
        }
    }
}

#Preview {
    ContentView()
}

