


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
    
    @State private var showSheet = false
    @State private var selectButtonIndex: Int? = nil
    
    var body: some View {
        VStack(spacing: 0) {
            
            USDZView(modelName: "herbamex")
                .frame(height: 600)
                .ignoresSafeArea(.all)
                .background(.red)
            VStack{
                
                let colums = Array(repeating: GridItem(.flexible(), spacing: 16), count: 2)
                
                LazyVGrid(columns: colums, spacing: 30) {
                    ForEach(0 ..< 4){
                        index in
                        Button (action: {
                            selectButtonIndex = index
                            showSheet = true
                        }){
                            Text("Boton \(index + 1)")
                                .padding()
                                .background(.thinMaterial)
                                .cornerRadius(8)
                        }
                        
                    }
                }
                .padding()
            }
            .frame(maxWidth: .infinity , maxHeight: .infinity)
            .background(.red)
            
        }
        .sheet(isPresented: Binding(
                    get: { showSheet && selectButtonIndex != nil },
                    set: { showSheet = $0 }
                )){
            if let index = selectButtonIndex{
                switch index {
                case 0:
                    boton1()
                case 1:
                    boton2()
                case 2:
                    boton1()
                case 3:
                    boton1()
                default:
                    Text("Error: Vista no encontrada")
                }
            }
        }
    }
}


#Preview {
    ContentView()
}

