//
//  mindfulness.swift
//  Final Project
//
//  Created by catzh on 8/15/23.
//

import SwiftUI

struct mindfulness: View {
    var body: some View {
        
        Slider(
                value: $speed,
                in: 0...100,
                step: 5
            ) {
                Text("Speed")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("100")
            } onEditingChanged: { editing in
                isEditing = editing
            }
            Text("\(speed)")
                .foregroundColor(isEditing ? .red : .blue)
    }
}

struct mindfulness_Previews: PreviewProvider {
    static var previews: some View {
        mindfulness()
    }
}
