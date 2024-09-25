


import SwiftUI
import SceneKit

struct USDZView: UIViewRepresentable {
    let modelName: String
    
    func makeUIView(context: Context) -> SCNView {
        
        //codigo viejo
//        let sceneView = SCNView()
//        // Cargar la escena con el modelo USDZ
//        let scene = SCNScene(named: "\(modelName).usdz")!
//        sceneView.scene = scene
//        sceneView.autoenablesDefaultLighting = false
//        sceneView.allowsCameraControl = true // Permitir el control de la cámara
//        sceneView.antialiasingMode = .multisampling2X
//        sceneView.showsStatistics = true // Mostrar estadísticas de la escena
//        sceneView.backgroundColor = .red // Fondo transparente
        
        //saañsldkjfañsldkjfañsldkfjañsdlkfjañsdlfjkañsldkjfañsldjfañlsdjfñalsjdf
        
        let sceneView = SCNView()
                
                // Cargar la escena con el modelo USDZ
                let scene = SCNScene(named: "\(modelName).usdz")!

                // Añadir luz a la escena
                let light = SCNLight()
        light.type = .omni // Tipo de luz omnidireccional
                light.color = UIColor.white// Color de la luz
                let lightNode = SCNNode()
                lightNode.light = light
                lightNode.position = SCNVector3(x: 10, y: 10, z: 10) // Posición de la luz
                scene.rootNode.addChildNode(lightNode)

                // Añadir una luz direccional
                let directionalLight = SCNLight()
                directionalLight.type = .directional
                directionalLight.color = UIColor.white
                let directionalLightNode = SCNNode()
                directionalLightNode.light = directionalLight
                directionalLightNode.position = SCNVector3(x: 10, y: 10, z: 10)
                scene.rootNode.addChildNode(directionalLightNode)

                // Configurar la vista de la escena
                sceneView.scene = scene
                sceneView.allowsCameraControl = true // Permitir el control de la cámara
                sceneView.showsStatistics = true // Mostrar estadísticas de la escena
                sceneView.backgroundColor = UIColor.clear// Cambiar el fondo a gris claro
        ////////////////////////////////////////////////////
        
        return sceneView
    }
    
    func updateUIView(_ uiView: SCNView, context: Context) {
        // Actualizaciones de la vista si es necesario
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            // Cambia "Earth" por el nombre de tu archivo USDZ sin la extensión
            USDZView(modelName: "Earth")
                .frame(height: 400) // Establecer altura de la vista
                .edgesIgnoringSafeArea(.all) // Ignorar áreas seguras
            Text("Modelo Earth Cargado")
                .font(.headline)
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

