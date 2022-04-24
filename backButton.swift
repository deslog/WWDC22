import SwiftUI

struct BackButton: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var foregroundColor: Color
    
    var body: some View {
        Button(action: { presentationMode.wrappedValue.dismiss()}) {
            HStack {
                
                Image(systemName: "chevron.backward")
                    .foregroundColor(foregroundColor)
                    .aspectRatio(contentMode: .fit)
                Text("🏠Home")
                    .foregroundColor(foregroundColor)
            }
        }
    }
}

