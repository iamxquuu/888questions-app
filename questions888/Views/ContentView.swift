//
//  ContentView.swift
//  questions888
//
//  Created by Marcel Maciaszek on 21/06/2023.
//

import SwiftUI



struct ContentView: View{
    
    @State private var question : QuestionJSON?
    private var questions = Bundle.main.decode([QuestionJSON].self, from: "data.json")
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(Color("background888"))
                .ignoresSafeArea()
            VStack{
                ScrollView {
                    //title
                    Group {
                        Text("888questions")
                            .font(.titleGasoek)
                            .foregroundColor(Color("pink888"))
                            .padding(.bottom, 30)
                    }
                    //category rectangle
                    Group {
                        ZStack {
                            rectangleView(cornerRadius: 30, height: 70)
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 2)
                            HStack {
                                VStack(alignment: .leading){
                                    Text("Category")
                                        .font(.subheadline)
                                    Text("Questions for Couples")
                                        .bold()
                                }
                                Spacer()
                            }.padding(.horizontal, 50)
                            
                            
                                
                        }
                            .padding(.bottom, 20)
                    }
                    //Question rectangle
                    Group {
                        ZStack {
                            rectangleView(cornerRadius: 30, height: 290)
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 2)
                            VStack{
                                HStack{
                                    Spacer()
                                    VStack(alignment: .trailing){
                                        Text("Question #\(question?.questionNumber ?? 0)")
                                            .font(.smallGasoek)
                                            .bold()
                                            .padding(.top, 10)
                                        
                                        Text("out of 888 on this Category")
                                            .font(.subheadline)
                                            .padding(.bottom, 10)
                                    }
                                    
                                }.padding(.horizontal, 55)
                                
                            

                                HStack {
                                    Text("Name")
                                        .font(.ButtonGasoek)
                                        .foregroundColor(Color("pink888"))
                                    Spacer()
                                }
                                .padding(.horizontal, 55)

                                HStack {
                                    
                                    VStack(alignment: .leading){
                                        Text(String(question?.question ?? ""))
                                            .font(.QuestionGasoek)
                                    }
                                    Spacer()
                                    
                                    
                                }.padding(.trailing, 30)
                                .padding(.leading, 55)
                                

                                
                                

                                Spacer()
                                HStack {
                                    
                                    Text("888questions")
                                        .font(.QuestionGasoek)
                                        .foregroundColor(Color("pink888"))
                                    Spacer()
                                }.padding(.horizontal, 55)
                                    .padding(.bottom, 20)
                            }
                            
                        }
                        
                    }
                    .padding(.bottom, 20)
                    Group {
                        Button {
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
                

                }.onAppear {
                    let questions = Bundle.main.decode([QuestionJSON].self, from: "data.json")
                    question = questions.randomElement()
                }
        }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
