//
//  BotaoFavoritar.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//
import SwiftUI

struct BotaoFavoritar: View {
	
	let nomePais: String
	
	@State var favoritou: Bool = false
	
	var body: some View {
		Bandeira(nomeSelecao: nomePais)
			.overlay(alignment: .topTrailing) {
				Button {
					favoritou.toggle()
				} label: {
					ZStack {
						Circle()
							.frame(width: 28, height: 28)
							.foregroundStyle(.corBotaoFavoritar)
							
						Image(systemName: favoritou ? "heart.fill" : "heart")
							.foregroundStyle(favoritou ? Color.corLaranja02 : Color.corFundo)
							.font(.system(size: 14))
					}
						
				}
				.glassEffect(.regular)
			}
	}
}
#Preview {
	BotaoFavoritar(nomePais: "Brasil")
}
