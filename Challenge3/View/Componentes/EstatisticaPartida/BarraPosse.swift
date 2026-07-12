//
//  BarraPosse.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//

import SwiftUI

struct BarraPosse: View {

	let posseDeBola: CGFloat

	@Environment(\.dynamicTypeSize) var dynamicTypeSize

	var posseDireita: CGFloat {
		100 - posseDeBola
	}

	var body: some View {
		Group {
			if dynamicTypeSize.isAccessibilitySize {
				layoutAcessivel
			} else {
				layoutPadrao
			}
		}
		.accessibilityElement(children: .ignore)
		.accessibilityLabel("Posse de bola. Brasil: \(Int(posseDeBola)) por cento. Japão: \(Int(posseDireita)) por cento.")
	}

	var layoutPadrao: some View {
		GeometryReader { geometry in
			let larguraTotal = geometry.size.width
			let larguraBrasil = larguraTotal * (posseDeBola / 100)

			ZStack {
				Capsule()
					.fill(.corVermelhoJapao)
					.stroke(.corFundo, lineWidth: 4)

				HStack(spacing: 0) {
					Capsule()
						.fill(.corVerdeBrasil)
						.stroke(.corFundo, lineWidth: 4)
						.frame(width: larguraBrasil)

					Spacer(minLength: 0)
				}

				HStack {
					Text("\(Int(posseDeBola))%")
						.font(.title3)
					Spacer()

					Text("Posse de Bola")
						.font(.subheadline)

					Spacer()

					Text("\(Int(posseDireita))%")
						.font(.title3)
				}
				.foregroundStyle(.white)
				.padding(.horizontal, 16)
			}
		}
		.frame(height: 45)
	}

	var layoutAcessivel: some View {
		VStack(alignment: .leading, spacing: 12) {
			Text("Posse de bola")
				.font(.headline)
				.foregroundStyle(.white)

			valorPosse(pais: "Brasil", valor: posseDeBola, cor: .corVerdeBrasil)

			valorPosse(pais: "Japão", valor: posseDireita,cor: .corVermelhoJapao)
		}
		.frame(maxWidth: .infinity, alignment: .leading)
	}

	func valorPosse(pais: String, valor: CGFloat,cor: Color) -> some View {
		VStack(alignment: .leading, spacing: 8) {
			HStack {
				Text(pais)
					.font(.body)

				Spacer()

				Text("\(Int(valor))%")
					.font(.headline)
			}
			.foregroundStyle(.white)

			ProgressView(value: valor, total: 100)
				.tint(cor)
		}
	}
}
#Preview {
	BarraPosse(posseDeBola: 69)
}
