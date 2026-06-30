//
//  Futebol.swift
//  Challenge3
//
//  Created by Pedro Canute on 30/06/26.
//
import SwiftUI

struct Futebol: View {
	var body: some View {
		VStack{
			Spacer()
			ZStack{
				Circle()
					.frame(maxWidth: .infinity, alignment: .center)
					.frame(width: 90, height: 90)
					.foregroundStyle(.white)
				Image(systemName: "soccerball.inverse")
					.font(.system(size:40))
					.foregroundStyle(.black)
					.preferredColorScheme(.dark)
			}
			Text("Futebol")
				.font(.title3)
			Spacer()
			BotaoLigas(icone: "globe.americas.fill", titulo: "Copa do Mundo 2026") { Jogos() }
			BotaoLigas(icone: "trophy", titulo: "Ligas e Torneios") { Jogos() }
			BotaoLigas(icone: "shield", titulo: "Times") { Jogos() }
			Spacer()
		}
	}
}
#Preview {
	Futebol()
}
