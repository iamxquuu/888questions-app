//
//  PlayersNamesView.swift
//  questions888
//
//  Created by Marcel Maciaszek on 30/06/2023.
//
import SwiftUI

struct PlayersNamesView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @State private var playerNames: [String] = []
    let selectedNumber: Int
    
    init(selectedNumber: Int) {
        self.selectedNumber = selectedNumber
    }
    
    var body: some View {
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
                
                ScrollView {
                    HStack{
                        Text("Enter Player Names:")
                            .font(.ButtonGasoek)
                            .foregroundColor(Color("pink888"))
                            
                        Spacer()
                    }.padding(.top, 10)
                    .padding(.horizontal, 20)
                    
                    HStack{
                        Text("Your username can contain a maximum of 11 characters.")
                            .font(.smallGasoek)
                            .foregroundColor(Color("pink888"))
                        Spacer()
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 35)
                    
                    ForEach(playerNames.indices, id: \.self) { index in
                        HStack{
                            Text("Player")
                                .font(.smallGasoek)
                                .foregroundColor(Color("pink888"))
                            Text("\(index + 1)")
                                .font(.smallGasoek)
                                .foregroundColor(Color("pink888"))
                                
                            Spacer()
                        }.padding(.leading, 20)
                        
                        TextField("", text: $playerNames[index])
                            .onChange(of: playerNames[index]) { newValue in
                                if newValue.count > 11 {
                                    playerNames[index] = String(newValue.prefix(11))
                                }
                            }
                            .padding()
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                    NavigationLink(destination: ContentViewCouples(playerNames: playerNames)) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .padding(.horizontal, 15)
                                .frame(height: 70)
                                .foregroundColor(Color("pink888"))
                                .shadow(color: .black, radius: 2)
                            Text("Next")
                                .foregroundColor(.white)
                                .font(.ButtonGasoek)
                        }
                    }
                    Spacer()
                }
                .onAppear {
                    playerNames = Array(repeating: "", count: selectedNumber)
                }
                }
                
        }
        
    }
}

struct PlayersNamesView_Previews: PreviewProvider {
    static var previews: some View {
        PlayersNamesView(selectedNumber: 4)
    }
}

