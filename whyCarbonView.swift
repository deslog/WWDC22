import SwiftUI

struct whyCarbonView: View {
    var body: some View {
        ZStack {
            Image("whyCarbonViewBackground")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                
                Text("🌳Why should we practice Net-Zero?🌍")
                    .font(.system(size:40))
                    .bold()
                    .foregroundColor(Color.white)
                    .padding(.all, 20)
                
                VStack {
                    Text(" What is Net-Zero ")
                        .font(.system(size: 30))
                        .bold()
                        .foregroundColor(Color.white)
                        .background(Color.green.opacity(0.6))
                    
                    Text("To go 'Net-Zero’ is to reduce greenhouse gas emissions and/or to ensure that any ongoing emissions are balanced by removals. Net-Zero is the internationally agreed upon goal for mitigating global warming in the second half of the century.\n")
                        .multilineTextAlignment(.center)
                        .font(.custom("Diwan Thuluth Regular", size: 25))
                        .padding(EdgeInsets(top: 30, leading: 20, bottom: 10, trailing: 20))
                        .foregroundColor(Color.white)
                        .background(RoundedRectangle(cornerRadius: 30).fill(Color.black.opacity(0.5)))
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 30, trailing: 30))
                    
                    Text(" The problem of global warming ")
                        .font(.system(size: 30))
                        .bold()
                        .background(Color.green.opacity(0.7))
                        .foregroundColor(Color.white)
                    
                    Text("🌊 Sea level rise.\n🌎 Natural disasters and abnormal climates.\n💦 Water scarcity problem due to disappearing glaciers.\n🌳 Destruction of the ozone layer and deepening of air pollution.\n🐻‍❄️ Ecosystem destructio: polar bears and penguins will become extinct.\n\nWith the onset of industrialization, the Earth's temperature has risen by 1.4 degrees over the past 30 years. If the temperature rises by more than 2 degrees Celsius, natural disasters beyond human reach will strike, and we may no longer be able to live on Earth. We must save the planet before that.\n")
                        .multilineTextAlignment(.leading)
                        .font(.custom("Diwan Thuluth Regular", size: 22))
                        .padding(EdgeInsets(top: 30, leading: 20, bottom: 10, trailing: 20))
                        .foregroundColor(Color.white)
                        .background(RoundedRectangle(cornerRadius: 30).fill(Color.black.opacity(0.5)))
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 30, trailing: 30))
                    
                    Spacer()
                }
                
                
            }
        }
    }
}

struct whyCarbonView_Previews: PreviewProvider {
    static var previews: some View {
        whyCarbonView()
    }
}
