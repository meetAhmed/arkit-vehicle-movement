//
//  VehicleControlView.swift
//  ARKit-VehicleMovement
//
//  Created by Ahmed Ali on 04/08/2023.
//

import SwiftUI

struct VehicleControlView: View {
    @Binding var vehicleScene: Experience.VehicleScene?
    
    var body: some View {
        VStack {
            Spacer()
            
            CustomButton(systemImageName: "arrow.up.square") {
                vehicleScene?.notifications.policeCarForward.post()
            }
            
            HStack {
                CustomButton(systemImageName: "arrow.backward.square") {
                    vehicleScene?.notifications.policeCarLeftTurn.post()
                }
                
                CustomButton(systemImageName: "car.circle") {
                    vehicleScene?.notifications.policeCarSpin.post()
                }
                
                CustomButton(systemImageName: "arrow.forward.square") {
                    vehicleScene?.notifications.policeCarRightTurn.post()
                }
            }
            
            CustomButton(systemImageName: "arrow.down.square") {
                vehicleScene?.notifications.policeCarReverse.post()
            }
        }
    }
}

struct VehicleControlView_Previews: PreviewProvider {
    static var previews: some View {
        VehicleControlView(vehicleScene: .constant(nil))
    }
}
