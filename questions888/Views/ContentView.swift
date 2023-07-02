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

struct ContentView: View {
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
                ScrollView {
                    // MARK: Title
                    Group {
                        Text("888questions")
                            .font(.titleGasoek)
                            .foregroundColor(Color("pink888"))
                            .padding(.bottom, 25)
                    }
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
                                    Text("Questions for Couples")
                                        .bold()
                                }
                                Spacer()
                            }
                            .padding(.horizontal, 50)
                        }
                        .padding(.bottom, 15)
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
                                        Text("Question #\(question?.questionNumber ?? 0)")
                                            .font(.smallGasoek)
                                            .bold()
                                            .padding(.top, 10)
                                        Text("out of 888 on this Category")
                                            .font(.subheadline)
                                            .padding(.bottom, 10)
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
                    .padding(.bottom, 15)
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


