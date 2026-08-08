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
            ZStack {
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

                VStack(spacing: 0) {
                    Text("🇸🇬")
                        .font(.system(size: 72))
                    Rectangle()
                        .fill(.brown)
                        .frame(width: 8, height: 150)
                }
                .rotationEffect(.degrees(-20), anchor: UnitPoint(x: 0.5, y: 0.0))
                .rotationEffect(.degrees(20))
            }
        }
    }
}

#Preview(traits: .fixedLayout(width: 400, height: 600)) {
    rightArm
}
