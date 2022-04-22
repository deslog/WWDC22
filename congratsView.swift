//
//  congratsView.swift
//  CO2-FootPrint
//
//  Created by 이지수 on 2022/04/22.
//

import SwiftUI

struct congratsView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.system(size: 40))
            
            NavigationLink(destination: mainView()) {
                Text("Go to home") //케미가 한 것 처럼 binding 해야할 듯? false 주는거로,
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

struct congratsView_Previews: PreviewProvider {
    static var previews: some View {
        congratsView()
    }
}
