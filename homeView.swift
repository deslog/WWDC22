import SwiftUI

struct homeView: View {
    @State var mailBedge = true
    @State var disBedge = true
    @State var musicBedge = true
    @State var n = 0
    @State private var alertActive = false
    @Binding var firstNaviLinkActive: Bool
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    ZStack {
                        VStack {
                            Text("Find hidden CO2!🐻‍❄️ (\(n)/3)")
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
                                    if n < 3 {
                                        n += 1
                                    }
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
                                    if n < 3 {
                                        n += 1
                                    }
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
                                    if n < 3 {
                                        n += 1
                                    }
                                }
                            }, label: {
                                Text("!").bold()
                                    .fontWeight(.semibold)
                                    .font(.system(size: 15))
                                    .frame(width: 35, height: 35, alignment: .center)
                                    .foregroundColor(disBedge ? Color.white : Color.black)
                            })
                            .padding()
                            .frame(width: 25, height: 25, alignment: .center)
                            .background(disBedge ? Color.red : Color.gray)
                            .clipShape(RoundedRectangle(cornerRadius: 40))
                        }
                        .offset(x: 125, y: -100)
                    }
                    .navigationBarHidden(true)
                    if n < 3 {
                        Text("Next Step 👉🏻")
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
                        NavigationLink(destination: mailView(firstNaviLinkActive: $firstNaviLinkActive)) {
                            Text("Next Step 👉🏻")
                                .font(.system(size: 30))
                                .frame(width: 320, height: 70, alignment: .center)
                                .background(Color.blue)
                                .foregroundColor(Color.white)
                                .cornerRadius(30)
                        }
                        .navigationBarHidden(true)
                    }
                    
                    
                }
                
                ZStack {
                    ChatBubble(direction: .left) {
                        Text("Use only the subscription services you absolutely need! Streaming video emits 1g of CO2 per 10 minutes, and data emits 11g of CO2 per 1MB of data. 📺")
                            .font(.system(size: 20))
                        
                            .padding(.all, 20)
                            .foregroundColor(Color.white)
                            .background(Color.green)
                            .frame(width: disBedge ? 0 : 210)
                    }
                    .offset(x: 580, y: -200)
                    
                    ChatBubble(direction: .left) {
                        Text("Don't streaming, download the soundtrack! Streaming services emit more CO2 with constant data usage.🎶")
                            .font(.system(size: 20))
                            .padding(.all, 20)
                            .foregroundColor(Color.white)
                            .background(Color.green)
                            .frame(width: musicBedge ? 0 : 210)
                    }
                    .offset(x: 580, y: 100)
                    
                    ChatBubble(direction: .right) {
                        Text("Please empty your mailbox! A lot of CO2 is generated in the space that stores mail.📫")
                            .font(.system(size: 20))
                            .padding(.all, 20)
                            .foregroundColor(Color.white)
                            .background(Color.green)
                            .frame(width: mailBedge ? 0 : 210)
                    }
                    .offset(x: -575, y: -200)
                }
                
            }
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView(firstNaviLinkActive: .constant(true))
    }
}
