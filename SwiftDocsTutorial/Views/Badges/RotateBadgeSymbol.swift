//
//  RotateBadgeSymbol.swift
//  SwiftDocsTutorial
//
//  Created by Eze Chidera Paschal on 15/07/2024.
//

import SwiftUI

struct RotateBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding()
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotateBadgeSymbol(angle: Angle(degrees: 5))
}
