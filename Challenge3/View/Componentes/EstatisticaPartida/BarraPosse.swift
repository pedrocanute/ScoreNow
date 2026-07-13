//
//  BarraPosse.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//

import SwiftUI

struct BarraPosse: View {

	@Environment(\.dynamicTypeSize) private var dynamicTypeSize

	private let posseBrasil = 69.0
	private let posseJapao = 31.0

	var body: some View {
		Group {
			if dynamicTypeSize.isAccessibilitySize {
				layoutAcessivel
			} else {
				barra
			}
		}
		.accessibilityElement(children: .ignore)
		.accessibilityLabel(
			"Posse de bola. Brasil: 69 por cento. Japão: 31 por cento."
		)
	}

	private var barra: some View {
		ZStack {
			Capsule()
				.fill(.corVermelhoJapao)
				.stroke(.corFundo, lineWidth: 4)
				.overlay(alignment: .leading){
					Capsule()
						.fill(.corVerdeBrasil)
						.stroke(.corFundo, lineWidth: 4)
						.frame(width: 255)
						
				}

			HStack {
				Text("69%")
					.font(.title3)

				Spacer()

				Text("Posse de Bola")
					.font(.subheadline)

				Spacer()

				Text("31%")
					.font(.title3)
			}
			.foregroundStyle(.white)
			.padding(.horizontal, 14)
		}
		.frame(height: 45)
	}

	private var layoutAcessivel: some View {
		VStack(alignment: .leading, spacing: 12) {
			Text("Posse de bola")
				.font(.headline)

			valorPosse(
				pais: "Brasil",
				valor: posseBrasil,
				cor: .corVerdeBrasil
			)

			valorPosse(
				pais: "Japão",
				valor: posseJapao,
				cor: .corVermelhoJapao
			)
		}
		.foregroundStyle(.white)
	}

	private func valorPosse(
		pais: String,
		valor: Double,
		cor: Color
	) -> some View {
		VStack(alignment: .leading, spacing: 8) {
			HStack {
				Text(pais)

				Spacer()

				Text("\(Int(valor))%")
					.font(.headline)
			}

			ProgressView(value: valor, total: 100)
				.tint(cor)
		}
	}
}

#Preview {
	BarraPosse()
		.padding()
		.background(.corFundo)
}
