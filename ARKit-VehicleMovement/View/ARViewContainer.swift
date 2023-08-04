//
//  ARViewContainer.swift
//  ARKit-VehicleMovement
//
//  Created by Ahmed Ali on 04/08/2023.
//

import RealityKit
import SwiftUI

struct ARViewContainer: UIViewRepresentable {
    @Binding var vehicleScene: Experience.VehicleScene?
    
    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero)
        
        Experience.loadVehicleSceneAsync { result in
            guard case .success(let scene) = result else { return }
            arView.scene.anchors.append(scene)
            vehicleScene = scene
        }
        
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
}
