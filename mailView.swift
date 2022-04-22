//
//  mailView.swift
//  CO2-FootPrint
//
//  Created by 이지수 on 2022/04/21.
//

import SwiftUI

struct mailView: View {
    @State var inbox = true
    @State var junkAndTrash = true
    @State var writemail = true
    @State var n = 0
    
    let screenWidth = 390
    let screenHeight = 844
    
    var body: some View {
        
        ZStack {
            VStack {
                ZStack {
                    VStack {
                        Text("Find hidden CO2!🐨 (\(n)/3)")
                            .bold()
                            .font(.system(size: 30))
                        
                        Image("mailView")
                            .resizable()
                            .frame(width: 342, height: 740)
                    }
                    
                    HStack {
                        Button(action: {
                            withAnimation(.easeIn) {
                                inbox = false
                                if n < 3{
                                    n += 1
                                }
                            }
                        }, label: {
                            Text("999").bold()
                                .fontWeight(.semibold)
                                .font(.system(size: 15))
                                .frame(width: 50, height: 35, alignment: .center)
                                .foregroundColor(inbox ? Color.blue : Color.black)
                        })
                        .padding()
                        .frame(width: 50, height: 30, alignment: .center)
                        .background(inbox ? Color.white : Color.yellow)
                    }
                    .offset(x: 98, y:-191)
                    
                    HStack {
                            Text("423").bold()
                                .fontWeight(.semibold)
                                .font(.system(size: 15))
                                .frame(width: 50, height: 35, alignment: .center)
                                .foregroundColor(Color.gray)
                                .padding()
                                .frame(width: 40, height: 30, alignment: .center)
                    }
                    .offset(x: 98, y:-96)
                    
                    HStack {
                        Button(action: {
                            withAnimation(.easeIn) {
                                if n < 3 && junkAndTrash == true {
                                    n += 1
                                }
                                junkAndTrash = false
                                
                            }
                        }, label: {
                            Text("23").bold()
                                .fontWeight(.semibold)
                                .font(.system(size: 15))
                                .frame(width: 50, height: 35, alignment: .center)
                                .foregroundColor(junkAndTrash ? Color.blue : Color.black)
                        })
                        .padding()
                        .frame(width: 40, height: 30, alignment: .center)
                                            .background(junkAndTrash ? Color.white : Color.yellow)
                    }
                    .offset(x: 98, y:-64)
                    
                    HStack {
                        Button(action: {
                            withAnimation(.easeIn) {
                                if n < 3 && junkAndTrash == true {
                                    n += 1
                                }
                                junkAndTrash = false
                                
                            }
                        }, label: {
                            Text("498").bold()
                                .fontWeight(.semibold)
                                .font(.system(size: 15))
                                .frame(width: 50, height: 35, alignment: .center)
                                .foregroundColor(junkAndTrash ? Color.blue : Color.black)
                        })
                        .padding()
                        .frame(width: 40, height: 30, alignment: .center)
                                            .background(junkAndTrash ? Color.white : Color.yellow)
                    }
                    .offset(x: 98, y:-33)
                    
                    HStack {
                        Button(action: {
                            withAnimation(.easeIn) {
                                writemail = false
                                if n < 3{
                                    n += 1
                                }
                            }
                        }, label: {
                            Image(systemName: "square.and.pencil")
                                .foregroundColor(writemail ? Color.blue : Color.black)
                        })
                        .padding()
                        .frame(width: 40, height: 30, alignment: .center)
                        .background(writemail ? Color.black.opacity(0.01) : Color.yellow)
                    }
                    .offset(x: 120, y:330)
                }
                
                NavigationLink(destination: instaView()) {
                    Text("Next Step 👉🏻")
                        .font(.system(size: 30))
                        .frame(width: 320, height: 70, alignment: .center)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }
                .navigationBarHidden(true)
                
            }
            
            ZStack {
                ChatBubble(direction: .left) {
                    Text("Delete emails you have already read! A huge amount of electricity is consumed to run a email data center.📨")
                        .font(.system(size: 20))
                    
                        .padding(.all, 20)
                        .foregroundColor(Color.white)
                        .background(Color.green)
                        .frame(width: inbox ? 0 : 210)
                }
                .offset(x: 580, y: -250)
                
                ChatBubble(direction: .left) {
                    Text("Skip the simple greetings! For every single email you send, 4g of CO2 is produced. 🌍")
                        .font(.system(size: 20))
                        .padding(.all, 20)
                        .foregroundColor(Color.white)
                        .background(Color.green)
                        .frame(width: writemail ? 0 : 210)
                }
                .offset(x: 580, y: 180)
                
                ChatBubble(direction: .right) {
                    Text("Please completely delete unnecessary junk and trash mail! Emptying 1GB of mailbox can reduce 14.9kg of CO2. 🚗")
                        .font(.system(size: 20))
                        .padding(.all, 20)
                        .foregroundColor(Color.white)
                        .background(Color.green)
                        .frame(width: junkAndTrash ? 0 : 210)
                }
                .offset(x: -575, y: -80)
            }
        }
        
    }
}

struct mailView_Previews: PreviewProvider {
    static var previews: some View {
        mailView()
    }
}
