//
//  ContentView.swift
//  ARKit-VehicleMovement
//
//  Created by Ahmed Ali on 04/08/2023.
//

import RealityKit
import SwiftUI

struct VehicleView : View {
    @State var vehicleScene: Experience.VehicleScene?
    
    var body: some View {
        ZStack {
            ARViewContainer(vehicleScene: $vehicleScene)
            VehicleControlView(vehicleScene: $vehicleScene)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        VehicleView()
    }
}
#endif
