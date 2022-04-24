import SwiftUI

struct howToGameView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            
            VStack {
                ZStack {

//                    GifImage("howToGame-min")
//                        .frame(width: 500, height: 500)
//                        .offset(x: -20, y: -50)
                    
                    Text("Find Hidden CO2! (0/2)")
                        .bold()
                        .font(.system(size: 20))
                        .foregroundColor(Color.black)
                        .offset(x: 0, y: -350)
                }
                
                
                Text(" How To Play 🎮 - This is example.")
                    .font(.system(size: 30))
                    .bold()
                    .background(Color.blue.opacity(0.8))
                    .foregroundColor(Color.white)
                
                Text("1️⃣ The number of answers is displayed as (0/3) in the title.\n2️⃣Touch the badge, app, number, function, etc. that can reduce CO2 in the iPhone frame.\n3️⃣Read the green bubble chat.\n4️⃣If you are not sure, click Hint.\n5️⃣When you have found all the correct answers, click Next.")
                    .multilineTextAlignment(.leading)
                    .font(.custom("Diwan Thuluth Regular", size: 22))
                    .padding(EdgeInsets(top: 30, leading: 20, bottom: 10, trailing: 20))
                    .foregroundColor(Color.white)
                    .background(RoundedRectangle(cornerRadius: 30).fill(Color.black.opacity(0.5)))
                    .padding(EdgeInsets(top: 10, leading: 30, bottom: 30, trailing: 30))
                
                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButton(presentationMode: _presentationMode, foregroundColor: Color.blue))
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
