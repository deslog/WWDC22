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
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ut semper quam. Phasellus non mauris sem. Donec sed fermentum eros. Donec pretium nec turpis a semper.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ut semper quam.\n Phasellus non mauris sem. Donec sed fermentum eros. Donec pretium nec turpis a semper.Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Suspendisse ut semper quam. Phasellus non mauris sem. Donec sed fermentum eros. Donec pretium nec turpis a semper.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ut semper quam.\n Phasellus non mauris sem. Donec sed fermentum eros. Donec pretium nec turpis a semper.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ut semper quam. Phasellus non mauris sem. \n\nDonec sed fermentum eros. Donec pretium nec turpis a semper.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ut semper quam. Phasellus non mauris sem. Donec sed fermentum eros. Donec pretium nec turpis a semper.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ut semper quam. Phasellus non mauris sem. Donec sed fermentum eros. Donec pretium nec turpis a semper.")
            }
            
        }
        .padding(EdgeInsets(top: 50, leading: 20, bottom: 50, trailing: 30))
        
        // navigationLink 여기다가 넣어야하나?
        
    }
    
}



struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}
