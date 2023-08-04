//
//  CustomButton.swift
//  ARKit-VehicleMovement
//
//  Created by Ahmed Ali on 04/08/2023.
//

import SwiftUI

struct CustomButton: View {
    var systemImageName: String
    var action: () -> Void
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.5)
            
            Button {
                action()
            } label: {
                Image(systemName: systemImageName)
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
        .frame(width: 60, height: 60)
        .cornerRadius(10)
        .padding()
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(systemImageName: "arrow.right") {
            print("Button Tapped")
        }
    }
}
