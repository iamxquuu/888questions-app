//
//  PlayersNamesView.swift
//  questions888
//
//  Created by Marcel Maciaszek on 30/06/2023.
//
import SwiftUI

struct PlayersNamesView: View {
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
                
                ScrollView {
                    Text("Enter Players Names:")
                        .font(.ButtonGasoek)
                        .foregroundColor(Color("pink888"))
                        .padding(.horizontal, 20)
                        .padding(.top, 20)
                        
                    Text("Your username can contain a maximum of 11 characters.")
                        .font(.smallGasoek)
                        .foregroundColor(Color("pink888"))
                        .padding(.horizontal, 20)
                        .padding(.bottom, 45)
                    
                    ForEach(playerNames.indices, id: \.self) { index in
                        HStack{
                            Text("Player \(index + 1)")
                                .font(.smallGasoek)
                                .foregroundColor(Color("pink888"))
                                
                            Spacer()
                        }.padding(.leading, 30)
                        
                        TextField("Player \(index + 1)", text: $playerNames[index])
                            .onChange(of: playerNames[index]) { newValue in
                                if newValue.count > 11 {
                                    playerNames[index] = String(newValue.prefix(11))
                                }
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                    NavigationLink(destination: ContentView(playerNames: playerNames)) {
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

