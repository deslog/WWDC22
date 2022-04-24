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
    @State private var hintActive = false
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
                        
                        Image("Image_insta")
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
                
                HStack {
                    Text("HINT🔎")
                        .font(.system(size: 30))
                        .frame(width: 320, height: 70, alignment: .center)
                        .background(Color.white.opacity(0.3))
                        .foregroundColor(Color.gray)
                        .cornerRadius(30)
                        .onTapGesture {
                            self.hintActive = true
                        }
                        .alert(isPresented: self.$hintActive){
                            Alert(title: Text("Hint"), message: Text("Look at the photos. They're using too much plastic. And computer monitors use a lot more energy than you think."), dismissButton: .default(Text("OK")))}
                    
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
            }
            
            ZStack {
                ChatBubble(direction: .right) {
                    Text("Use less plastic! (Please use a tumbler) At least 10% of the climate crisis is due to consumption of plastics.")
                        .font(.system(size: 20))
                    
                        .padding(.all, 20)
                        .foregroundColor(Color.white)
                        .background(Color.green)
                        .frame(width: usePlastic ? 0 : 210)
                }
                .offset(x: -580, y: -150)
                
                ChatBubble(direction: .left) {
                    Text("Use power saving mode! By lowering the monitor brightness to 70%, you can save 20% of the energy used.")
                        .font(.system(size: 20))
                        .padding(.all, 20)
                        .foregroundColor(Color.white)
                        .background(Color.green)
                        .frame(width: useComputer ? 0 : 210)
                }
                .offset(x: 580, y: 100)
            }
        }
        
    }
}
