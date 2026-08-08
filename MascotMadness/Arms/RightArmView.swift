import SwiftUI

var rightArm: some BodyPart {
    RightArm {
        RightUpperArmSegment {
            FurryArmShape()
                .fill(
                    LinearGradient(
                        stops: stripeStops,
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: 150, height: 220)
                .rotationEffect(.degrees(-20), anchor: UnitPoint(x: 0.5, y: 1.0))
        }
    } foreArm: {
        RightLowerArmSegment {
            FurryArmShape()
                .fill(
                    LinearGradient(
                        stops: stripeStops,
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: 150, height: 220)
                .rotationEffect(.degrees(-20), anchor: UnitPoint(x: 0.5, y: 0.0))
        }
    }
}

#Preview(traits: .fixedLayout(width: 400, height: 600)) {
    rightArm
}
