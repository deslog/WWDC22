//
//  File.swift
//  CO2-FootPrint
//
//  Created by 이지수 on 2022/04/20.
//

import SwiftUI


struct mainView: View {
    @State var firstNaviLinkActive: Bool = false
    
    
    var body: some View {
        NavigationView {
            ZStack{
                Image("mainBackground")
                    .resizable()
                    .ignoresSafeArea(.all)
                
                ZStack {
                    VStack {
                        Text("📱DIGITAL DIET🌳")
                            .bold()
                            .font(.custom("Noteworthy Bold", size: 55))
                            .padding(10)
                        Text(" Downsize your Digital Footprint ")
                            .bold()
                            .font(.system(size: 35))
                            .background(Color.green.opacity(0.6))
                        
                        
                        Text("Safe to say, we spend a lot of time looking at our phones. \nBut did you know that our digital habits are destroying the environment?\n\nPowering the internet and storing all our data ‘somewhere up there in the cloud’ takes a lot of energy. The CO2 generated in this way is called 'DIGITAL FOOTPRINT'. \n\nFor the sake of the Earth and our continuous lives, we should try to reduce the CO2 when we use digital. So from now on, we're going to learn how to reduce digital footprints.\n")
                            .multilineTextAlignment(.center)
                            .font(.system(size: 25))
                            .padding(EdgeInsets(top: 30, leading: 20, bottom: 10, trailing: 20))
                            .foregroundColor(Color.white)
                            .background(RoundedRectangle(cornerRadius: 30).fill(Color.black.opacity(0.5)))

                        Text(" Let's Go on a Digital Diet! \t")
                            .font(.title).bold()
                            .foregroundColor(Color.black)
                            .background(Color.green.opacity(0.6))
                        
                        VStack {
                            HStack {
                                NavigationLink(destination: howToGameView()) {
                                    Text("How To Play🧐")
                                        .font(.system(size: 30))
                                        .frame(width: 320, height: 70, alignment: .center)
                                        .background(Color.black)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(30)
                                }
                                .navigationBarHidden(true)
                                .padding(10)
                                
                                NavigationLink(destination: homeView(firstNaviLinkActive: $firstNaviLinkActive), isActive: $firstNaviLinkActive) {
                                    Text("Game Start 🎉")
                                        .font(.system(size: 30))
                                        .frame(width: 320, height: 70, alignment: .center)
                                        .background(Color.black)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(30)
                                }
                                .navigationBarHidden(true)
                                .padding(10)
                                
                            }
                            NavigationLink(destination: whyCarbonView()) {
                                Text("Why should we practice Net-Zero?")
                                    .font(.system(size: 20))
                                    .frame(width: 380, height: 45, alignment: .center)
                                    .foregroundColor(Color.white)
                                    .background(Color.black.opacity(0.6))
                                    .cornerRadius(30)
                            }
                            .navigationBarHidden(true)
                        }
                        
                    }
                    
                }
                .padding(EdgeInsets(top: 50, leading: 20, bottom: 50, trailing: 30))
            }
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
}



struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}
