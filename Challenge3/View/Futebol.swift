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
				.font(.system(size: 24))
				.padding(.bottom, 60)
				.padding(.top, 20)
				.fontWeight(.semibold)
			
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
