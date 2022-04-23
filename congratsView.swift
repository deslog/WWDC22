import SwiftUI

struct congratsView: View {
    @Binding var firstNaviLinkActive: Bool

    var body: some View {
        ZStack {
            Image("mainBackground")
                .resizable()
                .ignoresSafeArea()
                
            VStack{
                ZStack{
                    ClappingHandsEmojiView()
                    fireworksEffectView()
                }
                .padding(.all, 30)
                
                VStack {
                    
                    Text("You save the EARTH 🌍❤️")
                        .bold()
                        .font(.system(size: 40))
                    
                    Text(" Thanks to you, the earth will be healthy.\nFrom now on, let's work slowly and practice small things!\n ")
                        .multilineTextAlignment(.center)
                        .font(.custom("Diwan Thuluth Regular", size: 25))
                        .padding(EdgeInsets(top: 30, leading: 20, bottom: 10, trailing: 20))
                        .foregroundColor(Color.white)
                        .background(RoundedRectangle(cornerRadius: 30).fill(Color.black.opacity(0.5)))
                        .padding(.all, 20)
                    NavigationLink(destination: mainView()) {
                        Text("Go to main")
                            .font(.system(size: 30))
                            .frame(width: 320, height: 70, alignment: .center)
                            .background(Color.black)
                            .foregroundColor(Color.white)
                            .cornerRadius(30)
                            .onTapGesture {
                                firstNaviLinkActive = false
                            }
                    }
                    .navigationBarHidden(true)
                }
            }
        }
        
    }
}

struct congratsView_Previews: PreviewProvider {
    static var previews: some View {
        congratsView(firstNaviLinkActive: .constant(true))
    }
}
