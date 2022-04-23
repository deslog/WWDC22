//
//  instaView.swift
//  CO2-FootPrint
//
//  Created by 이지수 on 2022/04/22.
//
import SwiftUI

struct instaView: View {
    @State var usePlastic = true
    @State var useComputer = true
    @State var n = 0
    @State private var alertActive = false
    @Binding var firstNaviLinkActive: Bool
    
    let screenWidth = 390
    let screenHeight = 844
    
    var body: some View {
        ZStack {
            Image("mainBackground")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                ZStack {
                    VStack {
                        Text("This is Last Step! Find hidden CO2!🐧 (\(n)/2)")
                            .bold()
                            .font(.system(size: 30))
                        
                        Image("instaView")
                            .resizable()
                            .frame(width: 342, height: 740)
                    }
                    
                    ZStack{
                        
                        Image("instaPlastic")
                            .resizable()
                            .frame(width: 265, height: 285)
                            .colorMultiply(usePlastic ? Color.clear : Color.red)
                            .offset(x: 18, y: -59)
                            .onTapGesture {
                                if n < 2 && usePlastic == true {
                                    n += 1
                                }
                                usePlastic = false
                            }
                        
                        Image("computer")
                            .resizable()
                            .frame(width: 225, height: 243)
                            .colorMultiply(useComputer ? Color.clear : Color.red)
                            .offset(x: 40, y: 83)
                            .onTapGesture {
                                if n < 2 && useComputer == true {
                                    n += 1
                                }
                                useComputer = false
                            }
                            
                    }
                    
                    
                    
                    
                }
                .navigationBarHidden(true)
                if n < 2 {
                    Text(" Done 🎉 ")
                        .font(.system(size: 30))
                        .frame(width: 320, height: 70, alignment: .center)
                        .background(Color.black.opacity(0.3))
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                        .onTapGesture {
                            self.alertActive = true
                        }
                        .alert(isPresented: self.$alertActive){
                            Alert(title: Text(""), message: Text("The game isn't over.\nYou need to find \(3-n) answers more."), dismissButton: .default(Text("OK")))}
                } else {
                    NavigationLink(destination: congratsView(firstNaviLinkActive: $firstNaviLinkActive)) {
                        Text(" Done 🎉 ")
                            .font(.system(size: 30))
                            .frame(width: 320, height: 70, alignment: .center)
                            .background(Color.black)
                            .foregroundColor(Color.white)
                            .cornerRadius(30)
                    }
                    .navigationBarHidden(true)
                }
                
            }
            
            ZStack {
                ChatBubble(direction: .left) {
                    Text("Delete emails you have already read! A huge amount of electricity is consumed to run a email data center.📨")
                        .font(.system(size: 20))
                    
                        .padding(.all, 20)
                        .foregroundColor(Color.white)
                        .background(Color.green)
                        .frame(width: usePlastic ? 0 : 210)
                }
                .offset(x: 580, y: -250)
                
                ChatBubble(direction: .left) {
                    Text("Skip the simple greetings! For every single email you send, 4g of CO2 is produced. 🌍")
                        .font(.system(size: 20))
                        .padding(.all, 20)
                        .foregroundColor(Color.white)
                        .background(Color.green)
                        .frame(width: useComputer ? 0 : 210)
                }
                .offset(x: 580, y: 180)
            }
        }
        
    }
}

struct instaView_Previews: PreviewProvider {
    static var previews: some View {
        instaView(firstNaviLinkActive: .constant(true))
    }
}
