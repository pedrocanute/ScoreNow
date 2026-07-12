//
//  BotaoComInfo.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//

import SwiftUI

struct BotaoComInfo: View {

	let paisEsquerda: String
	let paisDireita: String

	@Environment(\.dynamicTypeSize) var dynamicTypeSize

	var body: some View {
		Group {
			if dynamicTypeSize.isAccessibilitySize {
				layoutAcessivel
			} else {
				layoutPadrao
			}
		}
		.frame(maxWidth: .infinity)
		.accessibilityElement(children: .combine)
		.accessibilityLabel(
			"\(paisEsquerda), 2. \(paisDireita), 1. Partida ao vivo."
		)
	}

	var layoutPadrao: some View {
		HStack(spacing: 36) {
			BotaoFavoritar(nomePais: paisEsquerda)

			placar

			BotaoFavoritar(nomePais: paisDireita)
		}
	}

	var layoutAcessivel: some View {
		VStack(spacing: 20) {
			placar

			HStack(alignment: .top, spacing: 24) {
				BotaoFavoritar(nomePais: paisEsquerda)

				BotaoFavoritar(nomePais: paisDireita)
			}
			.frame(maxWidth: .infinity)
		}
	}

	var placar: some View {
		VStack(spacing: 4) {
			Text("2 x 1")
				.font(.largeTitle)
				.fontWeight(.heavy)
				.foregroundStyle(.white)

			Relogio(segundosIniciais: 1542)
		}
	}
}
#Preview {
	BotaoComInfo(paisEsquerda: "Brasil", paisDireita: "Japão")
}
