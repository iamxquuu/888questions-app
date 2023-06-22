//
//  welcomeView.swift
//  questions888
//
//  Created by Marcel Maciaszek on 22/06/2023.
//

import SwiftUI

struct welcomeView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Rectangle()
                    .foregroundColor(Color("background888"))
                    .ignoresSafeArea()
                        
                VStack{
                    ScrollView {
                        Text("888questions")
                            .font(.titleGasoek)
                            .foregroundColor(Color("pink888"))
                        Text("Choose Category to Continue")
                            .font(.title3)
                            .bold()
                        NavigationLink {
                            ContentView()
                        } label: {
                            ZStack {
                                rectangleView(cornerRadius: 20, height: 150)
                                    .foregroundColor(.white)
                                Text("Couples")
                                    .font(.ButtonGasoek)
                                    .foregroundColor(Color("pink888"))
                            }
                        }

                        
                            
                        
                        NavigationLink {
                            ContentView()
                        } label: {
                            ZStack {
                                rectangleView(cornerRadius: 20, height: 150)
                                    .foregroundColor(.white)
                                Text("Party")
                                    .font(.ButtonGasoek)
                                    .foregroundColor(Color("pink888"))
                            }
                        }
                        NavigationLink {
                            ContentView()
                        } label: {
                            ZStack {
                                rectangleView(cornerRadius: 20, height: 150)
                                    .foregroundColor(.white)
                                Text("18+")
                                    .font(.ButtonGasoek)
                                    .foregroundColor(Color("pink888"))
                            }
                        }
                        NavigationLink {
                            ContentView()
                        } label: {
                            ZStack {
                                rectangleView(cornerRadius: 20, height: 150)
                                    .foregroundColor(.white)
                                Text("Challenge")
                                    .font(.ButtonGasoek)
                                    .foregroundColor(Color("pink888"))
                            }
                        }
                    }
                }
            }
        }
        
    }
}

struct welcomeView_Previews: PreviewProvider {
    static var previews: some View {
        welcomeView()
    }
}
