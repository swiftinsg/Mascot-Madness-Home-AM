import SwiftUI

var torso: some BodyPart {
    Torso {
        ZStack {
            RoundedRectangle(cornerRadius:20)
                .frame(width: 200, height: 500)
                .foregroundStyle(.brown)
            Circle()
                .frame(width: 500)
                .foregroundStyle(.brown)
            Circle()
                .frame(width:20)
        }
    }
}

#Preview(traits: .fixedLayout(width: 200, height: 200)) {
    torso
}
