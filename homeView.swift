//
//  File.swift
//  CO2-FootPrint
//
//  Created by 이지수 on 2022/04/19.
//  기본 사이즈 428 * 926

import SwiftUI

struct homeView: View {
    @State var mailBedge = true
    @State var disBedge = true
    @State var musicBedge = true
    
    let screenWidth = 390
    let screenHeight = 844
    
    var body: some View {
        ZStack {
            VStack {
                Text("step.1 Find three answer!🐻‍❄️")
                    .bold()
                .font(.system(size: 30))
                
                Image("homeView")
                    .resizable()
                    .frame(width: 342, height: 740)
            }
            
            
            HStack {
                Button(action: {
                    withAnimation(.easeIn) {
                        mailBedge = false
                    }
                }, label: {
                    Text("999").bold()
                        .fontWeight(.semibold)
                        .font(.system(size: 15))
                        .frame(width: 50, height: 35, alignment: .center)
                        .foregroundColor(mailBedge ? Color.white : Color.black)
                })
                .padding()
                .frame(width: 40, height: 30, alignment: .center)
                .background(mailBedge ? Color.red : Color.gray)
            .clipShape(RoundedRectangle(cornerRadius: 40))
            }
            .offset(x: -85, y:-100)
            
            HStack {
                Button(action: {
                    withAnimation(.easeIn) {
                        musicBedge = false
                    }
                }, label: {
                    Text("!").bold()
                        .fontWeight(.semibold)
                        .font(.system(size: 15))
                        .frame(width: 25, height: 25, alignment: .center)
                        .foregroundColor(musicBedge ? Color.white : Color.black)
                })
                .padding()
                .frame(width: 25, height: 25, alignment: .center)
                .background(musicBedge ? Color.red : Color.gray)
            .clipShape(RoundedRectangle(cornerRadius: 40))
            }
            .offset(x: 125, y: 300)
            
            HStack {
                Button(action: {
                    withAnimation(.easeIn) {
                        disBedge = false
                    }
                }, label: {
                    Text("!").bold()
                        .fontWeight(.semibold)
                        .font(.system(size: 15))
                        .frame(width: 25, height: 25, alignment: .center)
                        .foregroundColor(disBedge ? Color.white : Color.black)
                })
                .padding()
                .frame(width: 25, height: 25, alignment: .center)
                .background(disBedge ? Color.red : Color.gray)
            .clipShape(RoundedRectangle(cornerRadius: 40))
            }
            .offset(x: 125, y: -100)
        }
        
        ZStack {
            // 말풍선 쌓기
        }
        
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
