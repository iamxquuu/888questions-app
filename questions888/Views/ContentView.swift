//
//  ContentView.swift
//  questions888
//
//  Created by Marcel Maciaszek on 21/06/2023.
//

import SwiftUI


struct ContentView: View{
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
                            .padding(.top, 20)
                            .padding(.bottom, 40)
                    }
                    //category rectangle
                    Group {
                        ZStack {
                            rectangleView(cornerRadius: 30, height: 70)
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 2)
                                
                        }
                            .padding(.bottom, 20)
                    }
                    //Question rectangle
                    Group {
                        ZStack {
                            rectangleView(cornerRadius: 30, height: 290)
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 2)
                        }
                        
                    }
                    .padding(.bottom, 20)
                    Group {
                        Button {
                            
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
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
