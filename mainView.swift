//
//  File.swift
//  CO2-FootPrint
//
//  Created by 이지수 on 2022/04/20.
//

import SwiftUI


struct mainView: View {
    var body: some View {
        ZStack {
            VStack {
                Text("📱DIGITAL DIET🌳")
                    .bold()
                    .font(.system(size: 40))
                Text("Downsize your Digital Footprint.")
                    .bold()
                    .font(.system(size: 30))
                
                VStack {
                    Text("hello") // ownstory 처럼 가져와보자
                }
                .padding(EdgeInsets(top: 30, leading: 20, bottom: 30, trailing: 20))
                
            }
            .padding(EdgeInsets(top: 50, leading: 20, bottom: 50, trailing: 30))
        }
    }
}


struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}
