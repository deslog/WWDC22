import SwiftUI

struct ClappingHandsEmojiView: View {
    
    // Initial Animation States
    @State private var blinking = false
    @State private var openingClosing = true
    @State private var clapping = true
    let StreamBlue = Color(#colorLiteral(red: 0, green: 0.368627451, blue: 1, alpha: 1))
    var body: some View {
        
        VStack(alignment: .trailing) {
            ZStack {
                Image("head")
                    .resizable()
                    .frame(width: 600, height: 500)
                
                VStack {
                    ZStack {
                        Image("eyelid")
                        
                        Image("eye_blink")
                        // 1. Eye Blink Animation
                            .resizable()
                            .frame(width: 200, height: 40)
                            .scaleEffect(y: blinking ? 0 : 1)
                            .animation(.timingCurve(0.68, -0.6, 0.32, 1.6).delay(1).repeatForever(autoreverses: false), value: blinking)
                            
                    }
                    .offset(x: 5, y: 140)
                    
                    ZStack {
                        Image("mouth")
                        // 2. Mouth Opening Animation
                            .resizable()
                            .frame(width: 100, height: 40)
                            .scaleEffect(x: openingClosing ? 0.7 : 1)
                            .animation(.timingCurve(0.68, -0.6, 0.32, 1.6).delay(1).repeatForever(autoreverses: true), value: openingClosing)
                            .offset(x: 10, y: 90)
                        
                        
                        HStack {
                            Image("left_hand")
                            // 3. Clapping Animation: Left Hand
                                .rotationEffect(.degrees(clapping ? 15 : -5), anchor: .bottom)
                                .offset(x: clapping ? 20 : -40)
                                .animation(.easeInOut(duration: 0.2).repeatForever(autoreverses: true), value: clapping)
                            
                            Image("right_hand")
                            // 4. Clapping Animation: Right Hand
                                .rotationEffect(.degrees(clapping ? -15 : 5), anchor: .bottom)
                                .offset(x: clapping ? -20 : 40)
                                .animation(.easeInOut(duration: 0.2).repeatForever(autoreverses: true), value: clapping)
                        }
                        .offset(x: 0, y: 100)
                        
                    }
                    
                }
                .onAppear{
                    // Final Animation States
                    clapping.toggle()
                    blinking.toggle()
                    openingClosing.toggle()
                }
                
            }.frame(width: 58, height: 58)
             .scaleEffect(0.25)
    
        }
        
    }
    
}

struct ClappingHandsEmojiView_Previews: PreviewProvider {
    static var previews: some View {
        ClappingHandsEmojiView()
    }
}
