//
//  howToGameView.swift
//  CO2-FootPrint
//
//  Created by 이지수 on 2022/04/22.
//

import SwiftUI

struct howToGameView: View {
    var body: some View {
        NavigationView {
            
            VStack {
                
                GifImage("howToGame")
                    .frame(width: 600, height: 600)
                    .offset(x: -20, y: -50)
                
                Text(" How To Play 🎮 - This is example.")
                    .font(.system(size: 30))
                    .bold()
                    .background(Color.blue.opacity(0.8))
                    .foregroundColor(Color.white)
                
                Text("1️⃣ The number of answers is displayed as (0/3) in the title.\n2️⃣Touch the badge, app, number, function, etc. that can reduce CO2 in the iPhone frame.\n3️⃣Read the description.🤓\n4️⃣If you are not sure, click Hint.\n5️⃣When you have found all the correct answers, click Next.")
                    .multilineTextAlignment(.leading)
                    .font(.custom("Diwan Thuluth Regular", size: 22))
                    .padding(EdgeInsets(top: 30, leading: 20, bottom: 10, trailing: 20))
                    .foregroundColor(Color.white)
                    .background(RoundedRectangle(cornerRadius: 30).fill(Color.black.opacity(0.5)))
                    .padding(EdgeInsets(top: 10, leading: 30, bottom: 30, trailing: 30))
                
                Spacer()
                
                
            }
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct howTogameView_Previews: PreviewProvider {
    static var previews: some View {
        howToGameView()
    }
}
