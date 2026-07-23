//
//  EscalacaoBrasil.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//

import SwiftUI

struct EscalacaoJapao: View {

	@Environment(\.dynamicTypeSize) var dynamicTypeSize

	var body: some View {
		VStack(spacing: 20) {
			if dynamicTypeSize.isAccessibilitySize {
				escalacaoAcessivel
			} else {
				campo
			}

			Text("Japão 3-4-2-1")
				.font(.headline)
				.foregroundStyle(.white)
				.accessibilityAddTraits(.isHeader)

			TabelaBancoJapao()
		}
	}

	private var campo: some View {
		ZStack {
			Image("campo")
				.accessibilityHidden(true)

			VStack(spacing: 35) {

				Jogador(nomeJogador: "A. Ueda", numeroCamisa: "18", corFundo: .white)

				HStack(spacing: 40) {
					Jogador(nomeJogador: "D. Maeda", numeroCamisa: "11", corFundo: .white)

					Jogador(nomeJogador: "J. Ito", numeroCamisa: "14", corFundo: .white)
				}
				.padding(.trailing, 10)

				HStack(spacing: 20) {
					Jogador(nomeJogador: "Nakamura", numeroCamisa: "13",
						corFundo: .white)

					Jogador(nomeJogador: "D. Kamada", numeroCamisa: "15", corFundo: .white)

					Jogador(nomeJogador: "K. Sano", numeroCamisa: "24", corFundo: .white)

					Jogador(nomeJogador: "R. Doan", numeroCamisa: "10", corFundo: .white)
				}

				HStack(spacing: 30) {
					Jogador(nomeJogador: "H. Ito", numeroCamisa: "21", corFundo: .white)

					Jogador( nomeJogador: "S. Taniguchi", numeroCamisa: "3", corFundo: .white)

					Jogador(nomeJogador: "T. Tomiyasu", numeroCamisa: "22", corFundo: .white)
				}
				.padding(.leading, 30)

				Jogador(nomeJogador: "Z. Suzuki", numeroCamisa: "1", corFundo: .white)
			}
		}
		.accessibilityElement(children: .ignore)
		.accessibilityLabel(
			"""
			Escalação do Japão, formação 3-4-2-1. \
			Atacante: camisa 18, A. Ueda. \
			Meias ofensivos: camisa 11, D. Maeda, e camisa 14, J. Ito. \
			Meio-campo: camisa 13, Nakamura; camisa 15, D. Kamada; \
			camisa 24, K. Sano; e camisa 10, R. Doan. \
			Defesa: camisa 21, H. Ito; camisa 3, S. Taniguchi; \
			e camisa 22, T. Tomiyasu. \
			Goleiro: camisa 1, Z. Suzuki.
			"""
		)
	}

	var escalacaoAcessivel: some View {
		VStack(alignment: .leading, spacing: 24) {
			setor(titulo: "Ataque", jogadores: [
					("18", "A. Ueda")
				])

			setor(titulo: "Meias ofensivos",jogadores: [
					("11", "D. Maeda"),
					("14", "J. Ito")
				])

			setor(titulo: "Meio-campo",jogadores: [
					("13", "Nakamura"),
					("15", "D. Kamada"),
					("24", "K. Sano"),
					("10", "R. Doan")
				])

			setor(titulo: "Defesa", jogadores: [
					("21", "H. Ito"),
					("3", "S. Taniguchi"),
					("22", "T. Tomiyasu")
				])

			setor(titulo: "Goleiro", jogadores: [
					("1", "Z. Suzuki")
				])
		}
		.frame(maxWidth: .infinity, alignment: .leading)
	}

	func setor(titulo: String, jogadores: [(numero: String, nome: String)]) -> some View {
		VStack(alignment: .leading, spacing: 12) {
			Text(titulo)
				.font(.headline)
				.foregroundStyle(.corSubtitulo)
				.accessibilityAddTraits(.isHeader)

			ForEach(jogadores, id: \.numero) { jogador in
				HStack(alignment: .firstTextBaseline, spacing: 12) {
					Text(jogador.numero)
						.font(.headline)
						.frame(minWidth: 40, alignment: .leading)
						.accessibilityLabel("Camisa \(jogador.numero)")

					Text(jogador.nome)
						.font(.body)
						.fixedSize(horizontal: false, vertical: true)
				}
				.foregroundStyle(.white)
				.accessibilityElement(children: .combine)
			}
		}
	}
}
#Preview {
	EscalacaoJapao()
}
