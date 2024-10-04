


import SwiftUI
import SceneKit



struct USDZView: UIViewRepresentable {
    let modelName: String
    
    
    func makeUIView(context: Context) -> SCNView {
        let sceneView = SCNView()
        
        let scene = SCNScene(named: "\(modelName).usdz")!
        
        // Añadir luz ambiental
        let ambientLight = SCNLight()
        ambientLight.type = .ambient
        ambientLight.color = UIColor.white
        let ambientLightNode = SCNNode()
        ambientLightNode.light = ambientLight
        scene.rootNode.addChildNode(ambientLightNode)
        
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(0,0,2)
        
        scene.rootNode.addChildNode(cameraNode)
        
        sceneView.scene = scene
        sceneView.allowsCameraControl = true
        sceneView.showsStatistics = false
        sceneView.backgroundColor = UIColor.blue

        return sceneView
    }
    
    func updateUIView(_ uiView: SCNView, context: Context) {
    }
}

struct ContentView: View {
    
    var a: (Int) -> Int = { _ in
            print("hola")
        return 5
    }
    
    var body: some View {
        VStack {
            USDZView(modelName: "herbamex")
                .frame(height: 600) // Establecer altura de la vista
//                .edgesIgnoringSafeArea(.all)
//            Text("Modelo Earth Cargado")
//                .font(.headline)
//                .padding()
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
            .frame(maxWidth: .infinity)
            .background(.red)
//            .padding(.top, 30)
            //        .padding()
        }
    }
}

#Preview {
    ContentView()
}

