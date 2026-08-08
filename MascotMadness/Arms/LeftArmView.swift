import SwiftUI

var leftArm: some BodyPart {
    LeftArm {
        LeftUpperArmSegment {
            FurryArmShape()
                .fill(
                    LinearGradient(
                        stops: stripeStops,
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: 150, height: 220)
                .rotationEffect(.degrees(250), anchor: UnitPoint(x: 0.5, y: 1.0))
        }
    } foreArm: {
        LeftLowerArmSegment {
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
                    .rotationEffect(.degrees(250), anchor: UnitPoint(x: 0.5, y: 0.0))

                Text("🌹")
                    .font(.system(size: 72))
                    .offset(y: 110)
                    .rotationEffect(.degrees(250), anchor: UnitPoint(x: 0.5, y: 0.0))
                    .rotationEffect(.degrees(-250))
            }
        }
    }
}

let stripeStops: [Gradient.Stop] = [
    .init(color: .red, location: 0.0),
    .init(color: .red, location: 0.25),
    .init(color: .white, location: 0.25),
    .init(color: .white, location: 0.5),
    .init(color: .red, location: 0.5),
    .init(color: .red, location: 0.75),
    .init(color: .white, location: 0.75),
    .init(color: .white, location: 1.0),
]

struct FurryArmShape: Shape {
    func path(in rect: CGRect) -> Path {
        let furHeight: CGFloat = 16
        let furWidth: CGFloat = 20
        var path = Path()

        let left = rect.minX
        let right = rect.maxX
        let top = rect.minY
        let bottom = rect.maxY

        path.move(to: CGPoint(x: left + furWidth, y: top))

        var y = top
        var goingRight = true
        while y < bottom {
            y = min(y + furHeight, bottom)
            let x = goingRight ? left : left + furWidth
            path.addLine(to: CGPoint(x: x, y: y))
            goingRight.toggle()
        }
        path.addLine(to: CGPoint(x: right - furWidth, y: bottom))

        y = bottom
        goingRight = true
        while y > top {
            y = max(y - furHeight, top)
            let x = goingRight ? right : right - furWidth
            path.addLine(to: CGPoint(x: x, y: y))
            goingRight.toggle()
        }
        path.addLine(to: CGPoint(x: left + furWidth, y: top))
        path.closeSubpath()
        return path
    }
}

#Preview(traits: .fixedLayout(width: 400, height: 600)) {
    leftArm
}

