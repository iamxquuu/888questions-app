//
//  PlayersCountView().swift
//  questions888
//
//  Created by Marcel Maciaszek on 30/06/2023.
//
import SwiftUI

struct PlayersCountView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @State private var selectedNumber = 1
    var body: some View{
        ZStack{
            Rectangle()
                .foregroundColor(Color("background888"))
                .ignoresSafeArea()
            VStack {
                Rectangle()
                    .frame(height: 0)
                    .navigationBarBackButtonHidden(true)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            }) {
                                Image(systemName: "chevron.backward")
                                    .foregroundColor(Color("pink888"))
                                    .bold()
                                
                            }
                        }
                    }

                Text("Choose number of players:")
                    .font(.ButtonGasoek)
                    .foregroundColor(Color("pink888"))
                    .padding(.horizontal, 20)
                    .padding(.top, 20)

                Picker("Liczba", selection: $selectedNumber) {
                    ForEach(1...15, id: \.self) { number in
                        Text("\(number)")
                            .foregroundColor(.white)
                    }
                }
                .pickerStyle(WheelPickerStyle())
                .padding()
                
                HStack{
                    Text("Number of Players: ")
                        .font(.smallGasoek)
                        .foregroundColor(Color("pink888"))
                    Text("\(selectedNumber)")
                        .font(.smallGasoek)
                        .foregroundColor(Color("pink888"))
                }
                
            

                NavigationLink {
                    PlayersNamesView(selectedNumber: selectedNumber)
                } label: {
                    ZStack {
                        rectangleView(cornerRadius: 20, height: 70)
                            .foregroundColor(Color("pink888"))
                        Text("Next")
                            .foregroundColor(.white)
                            .font(.ButtonGasoek)
                    }
                }

            


                
                
                    
                Spacer()
            }
                
        }
        
    }
}
struct PlayersCountView_Previews: PreviewProvider {
    static var previews: some View {
        PlayersCountView()
    }
}
