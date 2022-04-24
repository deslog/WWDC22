import SwiftUI

struct ClappingHandsEmojiView: View {

    @State private var blinking = false
    @State private var openingClosing = true
    @State private var clapping = true
    let StreamBlue = Color(#colorLiteral(red: 0, green: 0.368627451, blue: 1, alpha: 1))
    var body: some View {
        
        VStack(alignment: .trailing) {
            ZStack {
                Image("head")
                    .resizable()
                    .frame(width: 640, height: 500)
                
                VStack {
                    ZStack {
                        Image("eyelid")
                        
                        Image("eye_blink")
                            .resizable()
                            .frame(width: 200, height: 40)
                            .scaleEffect(y: blinking ? 0 : 1)
                            .animation(.timingCurve(0.68, -0.6, 0.32, 1.6).delay(1).repeatForever(autoreverses: false), value: blinking)
                            
                    }
                    .offset(x: 5, y: 140)
                    
                    ZStack {
                        Image("mouth")
                            .resizable()
                            .frame(width: 120, height: 40)
                            .scaleEffect(x: openingClosing ? 0.7 : 1)
                            .offset(x: 7, y: 85)
                        
                        
                        HStack {
                            Image("left_hand")
                                .rotationEffect(.degrees(clapping ? 15 : -5), anchor: .bottom)
                                .offset(x: clapping ? 20 : -40)
                                .animation(.easeInOut(duration: 0.2).repeatForever(autoreverses: true), value: clapping)
                            
                            Image("right_hand")
                                .rotationEffect(.degrees(clapping ? -15 : 5), anchor: .bottom)
                                .offset(x: clapping ? -20 : 40)
                                .animation(.easeInOut(duration: 0.2).repeatForever(autoreverses: true), value: clapping)
                        }
                        .offset(x: 0, y: 100)
                        
                    }
                    
                }
                .onAppear{
                    clapping.toggle()
                    blinking.toggle()
                    openingClosing.toggle()
                }
                
            }.frame(width: 58, height: 58)
             .scaleEffect(0.25)
    
        }
        
    }
    
}
