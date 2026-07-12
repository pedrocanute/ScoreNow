//
//  Esportes.swift
//  Challenge3
//
//  Created by Pedro Canute on 30/06/26.
//

import SwiftUI

struct Esportes: View {
	@Environment(\.dynamicTypeSize) private var dynamicTypeSize

	var body: some View {
		ZStack {
			Color.corFundo
				.ignoresSafeArea()

			if dynamicTypeSize.isAccessibilitySize {
				ScrollView {
					conteudo
				}
			} else {
				conteudo
			}
		}
	}

	var conteudo: some View {
		VStack(spacing: 80) {
			Text("Esportes")
				.font(.custom("Play-Bold", size: 35, relativeTo: .largeTitle))
				.frame(maxWidth: .infinity, alignment: .leading)
				.padding(.leading, 24)

			if dynamicTypeSize.isAccessibilitySize {
				layoutAcessivel
			} else {
				layoutPadrao
			}
		}
		.padding(.vertical, 24)
	}

	var layoutPadrao: some View {
		HStack(spacing: 40) {
			ColunaEsquerdaEsporte()

			ColunaCentroEsporte()
				.offset(y: -45)

			ColunaDireitaEsporte()
		}
		.frame(maxWidth: .infinity, alignment: .leading)
		.padding(.leading, 24)
	}

	var layoutAcessivel: some View {
		VStack(spacing: 16) {
			ColunaCentroEsporte()
			ColunaEsquerdaEsporte()
			ColunaDireitaEsporte()
		}
		.padding(.horizontal, 24)
	}
}
#Preview {
	Esportes()
}
