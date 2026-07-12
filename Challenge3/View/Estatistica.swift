//
//  Estatistica.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//

import SwiftUI

struct Estatistica: View {

	@State var selecao = 0
	@Environment(\.dynamicTypeSize) var dynamicTypeSize

	var body: some View {
		ZStack {
			Color.corFundo
				.ignoresSafeArea()

			ScrollView {
				VStack(spacing: dynamicTypeSize.isAccessibilitySize ? 28 : 20) {

					Text("Ao Vivo")
						.font(.custom("Play-Bold", size: 28, relativeTo: .title))
						.frame(maxWidth: .infinity, alignment: .leading)
						.accessibilityAddTraits(.isHeader)

					BotaoComInfo(paisEsquerda: "Brasil", paisDireita: "Japão")

					Picker("Dados da partida", selection: $selecao) {
						Text("Resumo")
							.tag(0)

						Text("Escalação")
							.tag(1)
					}
					.pickerStyle(.segmented)
					.frame(maxWidth: dynamicTypeSize.isAccessibilitySize ? .infinity : 302)

					Group {
						switch selecao {
						case 0:
							ResumoPartida()

						case 1:
							Escalacao()

						default:
							ResumoPartida()
						}
					}
				}
				.padding(.horizontal, 24)
				.padding(.vertical, 20)
			}
			.scrollEdgeEffectStyle(.soft, for: .top)
		}
		.toolbar(.hidden, for: .tabBar)
	}
}
#Preview {
	Estatistica()
}
