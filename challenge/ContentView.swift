


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
                .ignoresSafeArea()
//                .edgesIgnoringSafeArea(.all)
//            Text("Modelo Earth Cargado")
//                .font(.headline)
//                .padding()
            ScrollView{
                
                let colums = Array(repeating: GridItem(.flexible(), spacing: 16), count: 2)
                
                LazyVGrid(columns: colums, spacing: 30) {
                    ForEach(0 ..< 4){
                        index in
                        Button {} label: {
                            Text("Botón \(index + 1)")
                                .padding(16)
                                .foregroundColor(.black)
                        }
                        .background(.thinMaterial)
                        .cornerRadius(8)
                    }
                }
                .padding()
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

