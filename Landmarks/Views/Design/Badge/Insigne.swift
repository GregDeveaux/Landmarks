//
//  Insigne.swift
//  Landmarks
//
//  Created by Greg-Mini on 08/01/2023.
//

import SwiftUI

struct Insigne: View {
    var badgeSymbols: some View {
        ForEach(0..<8) { index in
            RotatedBadgeSymbol(
                angle: .degrees(Double(index) / 8) * 360
            )
        }
        .opacity(0.5)
    }

    var body: some View {
        ZStack {
            BadgeBackground()
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1/4, anchor: .top)
                    .position(x: geometry.size.width / 2, y: geometry.size.height * 3/4)
            }
        }
        .scaledToFit()
    }
}

struct Insigne_Previews: PreviewProvider {
    static var previews: some View {
        Insigne()
    }
}
