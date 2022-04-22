//
//  safariView.swift
//  CO2-FootPrint
//
//  Created by 이지수 on 2022/04/22.
//

import SwiftUI

struct safariView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.system(size: 40))
            
            NavigationLink(destination: congratsView()) {
                Text("Finish")
                    .font(.system(size: 30))
                    .frame(width: 320, height: 70, alignment: .center)
                    .background(Color.gray)
                    .foregroundColor(Color.white)
                    .cornerRadius(30)
            }
            .navigationBarHidden(true)
        }
    }
}

struct safariView_Previews: PreviewProvider {
    static var previews: some View {
        safariView()
    }
}
