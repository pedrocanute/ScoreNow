//
//  CardJogos.swift
//  Challenge3
//
//  Created by Pedro Canute on 09/07/26.
//

import SwiftUI

struct CardJogos<Destino: View>: View {

	let titulo: String
	let aoVivo: Bool
	let paisEsquerda: String
	let paisDireita: String
	var horario: String = "16:00"

	let destino: () -> Destino

	@Environment(\.dynamicTypeSize) private var dynamicTypeSize
	@State private var ativarHaptic = false

	var body: some View {
		NavigationLink {
			destino()
		} label: {
			Group {
				if dynamicTypeSize.isAccessibilitySize {
					cardAcessivel
				} else {
					cardPadrao
				}
			}
			.frame(maxWidth: .infinity)
			.background(.corCard)
			.clipShape(RoundedRectangle(cornerRadius: 20))
			.shadow(
				color: .black.opacity(0.45),
				radius: 2,
				x: 0,
				y: 3
			)
			.padding(.bottom, 6)
		}
		.simultaneousGesture(
			TapGesture().onEnded {
				ativarHaptic.toggle()
			}
		)
		.sensoryFeedback(.selection, trigger: ativarHaptic)
		.buttonStyle(.plain)
		.accessibilityElement(children: .combine)
		.accessibilityLabel(labelAcessibilidade)
		.accessibilityHint("Toque duas vezes para ver os detalhes da partida")
	}

	var cardPadrao: some View {
		ZStack(alignment: .trailing) {
			VStack {
				Text(titulo)
					.font(.caption)
					.foregroundStyle(.corSubtitulo)
					.padding(.top, 8)

				DadoPartida(aoVivo: aoVivo, paisEsquerda: paisEsquerda, paisDireita: paisDireita, horario: horario)
			}
			.frame(maxWidth: .infinity)

			Image(systemName: "chevron.compact.right")
				.font(.subheadline)
				.foregroundStyle(.corLinha)
				.padding(.trailing, 10)
				.accessibilityHidden(true)
		}
		.frame(height: 140)
	}

	var cardAcessivel: some View {
		VStack(alignment: .leading, spacing: 16) {
			HStack(alignment: .firstTextBaseline, spacing: 12) {
				Text(titulo)
					.font(.headline)
					.foregroundStyle(.corSubtitulo)
					.fixedSize(horizontal: false, vertical: true)

				Spacer(minLength: 8)

				Image(systemName: "chevron.right")
					.font(.body.bold())
					.foregroundStyle(.corLinha)
					.accessibilityHidden(true)
			}

			Divider()

			VStack(alignment: .leading, spacing: 12) {
				Text(paisEsquerda)
					.font(.title2.bold())
					.foregroundStyle(.primary)
					.fixedSize(horizontal: false, vertical: true)

				Text("contra")
					.font(.body)
					.foregroundStyle(.secondary)

				Text(paisDireita)
					.font(.title2.bold())
					.foregroundStyle(.primary)
					.fixedSize(horizontal: false, vertical: true)
			}

			HStack(alignment: .firstTextBaseline, spacing: 10) {
				if aoVivo {
					Image(systemName: "circle.fill")
						.font(.caption2)
						.foregroundStyle(.red)
						.accessibilityHidden(true)

					Text("Ao vivo")
						.font(.headline)
						.foregroundStyle(.red)
				} else {
					Image(systemName: "clock")
						.accessibilityHidden(true)

					Text(horario)
						.font(.headline)
				}
			}
		}
		.frame(maxWidth: .infinity, alignment: .leading)
		.padding(20)
	}

	var labelAcessibilidade: String {
		if aoVivo {
			return "\(titulo). \(paisEsquerda) contra \(paisDireita). Partida ao vivo."
		}

		return "\(titulo). \(paisEsquerda) contra \(paisDireita), às \(horario)."
	}
}
#Preview {
	CardJogos(titulo: "Dezesseis avos de final", aoVivo: true, paisEsquerda: "Brasil", paisDireita: "Japão") { Copa()}
}
