//
//  mailView.swift
//  CO2-FootPrint
//
//  Created by 이지수 on 2022/04/21.
//

import SwiftUI

struct mailView: View {
    
    let screenWidth = 390
    let screenHeight = 844
    
    var body: some View {
        VStack {
            ZStack {
                VStack {
                    Text("step.2 Find three answer, too!🐨")
                        .bold()
                        .font(.system(size: 30))
                    
                    Image("mailView")
                        .resizable()
                    .frame(width: 342, height: 740)
                }
            }
            
            ZStack {
                // 말풍선 쌓기
            }
            
            // next, hint 버튼 만들어야해
            
        } //hstack 끝
        
        
        
    }
}

struct mailView_Previews: PreviewProvider {
    static var previews: some View {
        mailView()
    }
}
