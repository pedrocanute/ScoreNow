//
//  LinhaEstatistica.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//

import SwiftUI

struct LinhaEstatistica: View {

	let dadoEsquerdo: String
	let titulo: String
	let dadoDireito: String
	var temDivisoria: Bool = true

	@Environment(\.dynamicTypeSize) private var dynamicTypeSize

	var body: some View {
		VStack(spacing: 12) {
			if dynamicTypeSize.isAccessibilitySize {
				layoutAcessivel
			} else {
				layoutPadrao
			}

			if temDivisoria {
				Divider()
					.frame(height: 1)
					.background(.corLinha)
			}
		}
		.frame(maxWidth: .infinity)
		.accessibilityElement(children: .ignore)
		.accessibilityLabel("\(titulo). Brasil: \(dadoEsquerdo). Japão: \(dadoDireito).")
	}

	var layoutPadrao: some View {
		HStack(spacing: 12) {
			Text(dadoEsquerdo)
				.font(.title3)
				.frame(width: 60, alignment: .leading)

			Text(titulo)
				.font(.subheadline)
				.lineLimit(1)
				.frame(maxWidth: .infinity, alignment: .center)

			Text(dadoDireito)
				.font(.title3)
				.frame(width: 60, alignment: .trailing)
		}
		.foregroundStyle(.white)
		.padding(.horizontal,15)
	}

	var layoutAcessivel: some View {
		VStack(alignment: .leading, spacing: 12) {
			Text(titulo)
				.font(.headline)
				.foregroundStyle(.white)
				.fixedSize(horizontal: false, vertical: true)

			HStack(alignment: .top, spacing: 20) {
				valorAcessivel(pais: "Brasil", valor: dadoEsquerdo)

				Spacer(minLength: 12)

				valorAcessivel(pais: "Japão", valor: dadoDireito)
			}
		}
		.frame(maxWidth: .infinity, alignment: .leading)
		.padding(.vertical, 8)
	}

	func valorAcessivel(pais: String, valor: String) -> some View {
		VStack(alignment: .leading, spacing: 4) {
			Text(pais)
				.font(.caption)
				.foregroundStyle(.corSubtitulo)

			Text(valor)
				.font(.title2.bold())
				.foregroundStyle(.white)
		}
	}
}
#Preview {
	LinhaEstatistica(dadoEsquerdo: "51%",titulo: "Prec. de passes", dadoDireito: "49%")
}
