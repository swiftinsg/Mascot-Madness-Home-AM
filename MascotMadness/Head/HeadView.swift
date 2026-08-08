import SwiftUI

var head: some BodyPart {
    Head {
        ZStack {
            Text("🦁")
                .font(.system(size:400))
            Text("👁")
                .font(.system(size:100))
                .offset(x: -50, y: -10)
            Text("👁")
                .font(.system(size:100))
                .offset(x: 50, y: -10)
            Text("👃")
                .font(.system(size:100))
                .offset(x: 0, y: 10)
            Text("👄")
                .font(.system(size:100))
                .offset(x: 0, y: 60)
        }
        Text("🎉")
            .font(.system(size: 200))
            .offset(x: -50, y:-590)
        
    }
}

#Preview(traits: .fixedLayout(width: 200, height: 200)) {
    head
}


