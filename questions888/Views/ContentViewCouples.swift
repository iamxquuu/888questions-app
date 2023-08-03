//
//  ContentView.swift
//  questions888
//
//  Created by Marcel Maciaszek on 21/06/2023.
//
//
//  ContentView.swift
//  questions888
//
//  Created by Marcel Maciaszek on 21/06/2023.
//

import SwiftUI
import GoogleMobileAds

struct ContentViewCouples: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @State private var question: QuestionJSON?
    private var questions = Bundle.main.decode([QuestionJSON].self, from: "data.json")
    @State private var currentPlayerIndex = 0
    @State private var playerNames: [String] = []
    
    init(playerNames: [String]) {
            self._playerNames = State(initialValue: playerNames)
        }
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("background888"))
                .ignoresSafeArea()
            VStack {
                // MARK: Back button
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
                    // MARK: Title
                    
                    
                    Text("888questions")
                        .font(.titleGasoek)
                        .foregroundColor(Color("pink888"))
                        .padding(.bottom, 7)
                    // MARK: Category rectangle
                    Group {
                        ZStack {
                            rectangleView(cornerRadius: 30, height: 70)
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 2)
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Category")
                                        .font(.subheadline)
                                        .foregroundColor(.black)
                                    Text("Questions for Couples")
                                        .bold()
                                        .foregroundColor(.black)
                                }
                                Spacer()
                            }
                            .padding(.horizontal, 50)
                        }
                        .padding(.top, 13)
                        
                    }
                    // MARK: Question rectangle
                    Group {
                        ZStack {
                            rectangleView(cornerRadius: 30, height: 315)
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 2)
                            VStack {
                                HStack {
                                    Spacer()
                                    VStack(alignment: .trailing) {
                                        HStack{
                                            Text("Question")
                                                .font(.smallGasoek)
                                                .bold()
                                                .padding(.top, 10)
                                                .foregroundColor(.black)
                                            Text("#\(question?.questionNumber ?? 0)")
                                                .font(.smallGasoek)
                                                .bold()
                                                .padding(.top, 10)
                                                .foregroundColor(.black)
                                        }
                                        
                                        Text("out of 888 on this Category")
                                            .font(.subheadline)
                                            .padding(.bottom, 10)
                                            .foregroundColor(.black)
                                    }
                                }
                                .padding(.horizontal, 55)

                                HStack {
                                    if let currentPlayer = playerNames.first {
                                        Text(currentPlayer)
                                            .font(.NameGasoek)
                                            .foregroundColor(Color("pink888"))
                                            .padding(.trailing, 30)
                                        Spacer()
                                       
                                    } else {
                                        Text("Brak graczy")
                                            .font(.title)
                                            .padding()
                                        Spacer()
                                    }
                                    
                                }
                                .padding(.horizontal, 55)

                                HStack {
                                    VStack(alignment: .leading) {
                                        Text(question?.question ?? "")
                                            .font(.QuestionGasoek)
                                            .foregroundColor(.black)
                                    }
                                    Spacer()
                                }
                                .padding(.trailing, 30)
                                .padding(.leading, 55)

                                Spacer()

                                HStack {
                                    Text("888questions")
                                        .font(.QuestionGasoek)
                                        .foregroundColor(Color("pink888"))
                                    Spacer()
                                }
                                .padding(.horizontal, 55)
                                .padding(.bottom, 15)
                            }
                        }
                    }
                    
                    // MARK: Button "Next Question"
                    Group {
                        Button {
                            playerNames.append(playerNames.removeFirst())
                            question = questions.randomElement()
                            
                            
                        } label: {
                            ZStack {
                                rectangleView(cornerRadius: 30, height: 70)
                                    .foregroundColor(Color("pink888"))
                                    .shadow(color: .black, radius: 2)
                                
                                Text("Next Question")
                                    .font(.ButtonGasoek)
                                    .foregroundColor(.white)
                                    
                            }
                        }
                    }.padding(.bottom, 15)
                    //MARK: Ad
                    Group{
                        BannerAd(unitID: "ca-app-pub-9499884549638718/7648795548").frame(height: 250)
                            .cornerRadius(30)
                            .padding(.horizontal, 30)
                    }
                    Spacer()
                }
            }
        }
        .onAppear {
            let questions = Bundle.main.decode([QuestionJSON].self, from: "data.json")
            question = questions.randomElement()
            
        }

    }
}


