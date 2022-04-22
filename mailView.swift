//
//  mailView.swift
//  CO2-FootPrint
//
//  Created by 이지수 on 2022/04/21.
//

import SwiftUI

struct mailView: View {
    @State var inbox = true
    @State var unread = true
    @State var junkAndTrash = true
    @State var writemail = true
    
    let screenWidth = 390
    let screenHeight = 844
    
    var body: some View {
        VStack {
            ZStack {
                VStack {
                    Text("Find 4 answers!🐨")
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
                        }
                    }, label: {
                        Text("999").bold()
                            .fontWeight(.semibold)
                            .font(.system(size: 15))
                            .frame(width: 50, height: 35, alignment: .center)
                            .foregroundColor(inbox ? Color.blue : Color.gray)
                    })
                    .padding()
                    .frame(width: 40, height: 30, alignment: .center)
                    //                    .background(inbox ? Color.red : Color.gray)
                }
                .offset(x: 98, y:-191)
                
                HStack {
                    Button(action: {
                        withAnimation(.easeIn) {
                            unread = false
                        }
                    }, label: {
                        Text("423").bold()
                            .fontWeight(.semibold)
                            .font(.system(size: 15))
                            .frame(width: 50, height: 35, alignment: .center)
                            .foregroundColor(unread ? Color.blue : Color.gray)
                    })
                    .padding()
                    .frame(width: 40, height: 30, alignment: .center)
                    //                    .background(inbox ? Color.red : Color.gray)
                }
                .offset(x: 98, y:-96)
                
                HStack {
                    Button(action: {
                        withAnimation(.easeIn) {
                            junkAndTrash = false
                        }
                    }, label: {
                        Text("23").bold()
                            .fontWeight(.semibold)
                            .font(.system(size: 15))
                            .frame(width: 50, height: 35, alignment: .center)
                            .foregroundColor(junkAndTrash ? Color.blue : Color.gray)
                    })
                    .padding()
                    .frame(width: 40, height: 30, alignment: .center)
                    //                    .background(inbox ? Color.red : Color.gray)
                }
                .offset(x: 98, y:-64)
                
                HStack {
                    Button(action: {
                        withAnimation(.easeIn) {
                            junkAndTrash = false
                        }
                    }, label: {
                        Text("498").bold()
                            .fontWeight(.semibold)
                            .font(.system(size: 15))
                            .frame(width: 50, height: 35, alignment: .center)
                            .foregroundColor(junkAndTrash ? Color.blue : Color.gray)
                    })
                    .padding()
                    .frame(width: 40, height: 30, alignment: .center)
                    //                    .background(inbox ? Color.red : Color.gray)
                }
                .offset(x: 98, y:-33)
                
                HStack {
                    Button(action: {
                        withAnimation(.easeIn) {
                            writemail = false
                        }
                    }, label: {
                        Image(systemName: "square.and.pencil")
                            .foregroundColor(writemail ? Color.blue : Color.gray)
                    })
                    .padding()
                    .frame(width: 40, height: 30, alignment: .center)
                }
                .offset(x: 120, y:330)
                
                ChatBubble(direction: .left) {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ut semper quam. Phasellus non mauris sem. Donec sed fermentum eros. Donec pretium nec turpis a semper.")
                        .font(.system(size: 20))
                        .padding(.all, 20)
                        .foregroundColor(Color.white)
                        .background(Color.green)
                        .frame(width: inbox ? 0 : 210)
                }
                .offset(x: 580, y: -350)
                

                
            } // zstack 끝
            
        } //가장 상단 vstack 끝
        
    }
}

struct mailView_Previews: PreviewProvider {
    static var previews: some View {
        mailView()
    }
}
