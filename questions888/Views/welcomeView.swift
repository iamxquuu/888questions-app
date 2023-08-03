import SwiftUI
import GoogleMobileAds

struct welcomeView: View {

    var body: some View {
        NavigationStack {
            ZStack{
                Rectangle()
                    .foregroundColor(Color("background888"))
                    .ignoresSafeArea()
                        
                VStack{
                    Text("888questions")
                        .font(.titleGasoek)
                        .foregroundColor(Color("pink888"))
                    Text("Choose Category to Continue")
                        .font(.title3)
                        .foregroundColor(.white)
                        .bold()
                        .padding(.bottom, 5)
                    ScrollView {
                        NavigationLink {
                            PlayersCountView()
                        } label: {
                            ZStack {
                                rectangleView(cornerRadius: 20, height: 150)
                                    .foregroundColor(.white)
                                Text("Couples")
                                    .font(.ButtonGasoek)
                                    .foregroundColor(Color("pink888"))
                            }
                        }.padding(.top, 10)
                        ZStack {
                            rectangleView(cornerRadius: 20, height: 150)
                                .foregroundColor(.white)
                            VStack {
                                Text("Party")
                                    .font(.ButtonGasoek)
                                    .foregroundColor(.gray)
                                HStack{
                                    Image(systemName: "lock.fill")
                                        .foregroundColor(.gray)
                                        .font(.NameGasoek)
                                    Text("Coming Soon...")
                                        .font(.NameGasoek)
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                        ZStack {
                            rectangleView(cornerRadius: 20, height: 150)
                                .foregroundColor(.white)
                            VStack {
                                Text("18+")
                                    .font(.ButtonGasoek)
                                    .foregroundColor(.gray)
                                HStack{
                                    Image(systemName: "lock.fill")
                                        .foregroundColor(.gray)
                                        .font(.NameGasoek)
                                    Text("Coming Soon...")
                                        .font(.NameGasoek)
                                        .foregroundColor(.gray)
                                }
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

