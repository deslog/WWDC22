//
//  File.swift
//  CO2-FootPrint
//
//  Created by 이지수 on 2022/04/20.
//

import SwiftUI


struct mainView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                    VStack {
                        Text("📱DIGITAL DIET🌳")
                            .bold()
                            .font(.system(size: 40))
                            .padding(10)
                        Text("Downsize your Digital Footprint.")
                            .bold()
                            .font(.system(size: 30))
                        
                        
                        Text("Safe to say, we spend a lot of time looking at our phones and computers - both at work and at home. \n\nBut did you know that our digital habits are also hitting the health of the planet hard? \n\nPowering the internet and storing all our data ‘somewhere up there in the cloud’ takes energy. A lot of energy. In fact, the IT industry is one of the fastest growing sources of carbon emissions. \n\nFor the sake of the Earth and our continuous lives, we should try to reduce the carbon generated when we use digital.\n\nSo from now on, we're going to learn how to reduce digital footprints.\n\n")
                            .font(.custom("Diwan Thuluth Regular", size: 25))
                            .padding(EdgeInsets(top: 30, leading: 20, bottom: 10, trailing: 20))
                        Text("Let's Go on a Digital Diet!")
                            .font(.title).bold()
                        
                        VStack {
                            HStack {
                                NavigationLink(destination: howToGameView()) {
                                    Text("How To Game🧐")
                                        .font(.system(size: 30))
                                        .frame(width: 320, height: 70, alignment: .center)
                                        .background(Color.green)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(30)
                                }
                                .navigationBarHidden(true)
                                .padding(10)
                                
                                NavigationLink(destination: homeView()) {
                                    Text("Game Start")
                                        .font(.system(size: 30))
                                        .frame(width: 320, height: 70, alignment: .center)
                                        .background(Color.green)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(30)
                                }
                                .navigationBarHidden(true)
                                .padding(10)
                                
                            }
                            NavigationLink(destination: whyCarbonView()) {
                                Text("Why shold we practice Net-Zero?")
                                    .font(.system(size: 30))
                                    .underline()
                                    .frame(width: 480, height: 70, alignment: .center)
                                    .foregroundColor(Color.blue)
                                    .cornerRadius(30)
                            }
                            .navigationBarHidden(true)
                        }
                        
                    }
                    
                }
            .padding(EdgeInsets(top: 50, leading: 20, bottom: 50, trailing: 30))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
}



struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}
