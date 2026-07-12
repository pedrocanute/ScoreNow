//
//  LinhaTabela.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//
import SwiftUI

struct LinhaTabela: View {

	let numeroEsquerda: String
	let nomeEsquerda: String
	let esquerdaFezGol: Bool
	let esquerdaAmarelo: Bool
	var substituicao: Bool
	var numeroDireita: String
	var nomeDireita: String
	let direitaFezGol: Bool
	let direitaAmarelo: Bool
	let temFundo: Bool
	var corIcone: Color = .corVerdeBrasil

	@Environment(\.dynamicTypeSize) var dynamicTypeSize

	var body: some View {
		Group {
			if dynamicTypeSize.isAccessibilitySize {
				layoutAcessivel
			} else {
				layoutPadrao
			}
		}
		.padding(12)
		.frame(maxWidth: .infinity)
		.background {
			if temFundo {
				RoundedRectangle(cornerRadius: 8)
					.fill(.corBotaoFavoritar.opacity(0.1))
			}
		}
		.accessibilityElement(children: .ignore)
		.accessibilityLabel(labelAcessibilidade)
	}

	var layoutPadrao: some View {
		HStack(spacing: 8) {
			jogador(numero: numeroEsquerda, nome: nomeEsquerda, fezGol: esquerdaFezGol, amarelo: esquerdaAmarelo)
			.foregroundStyle(substituicao ? Color.corVerdeTabela : Color.white)

			if substituicao {
				Image(systemName: "arrow.left.arrow.right")
					.symbolRenderingMode(.palette)
					.foregroundStyle(.corLaranja01, .corVerdeTabela)
					.frame(width: 30)
					.accessibilityHidden(true)

				jogador(numero: numeroDireita, nome: nomeDireita, fezGol: direitaFezGol, amarelo: direitaAmarelo)
				.foregroundStyle(.corLaranja01)
			}
		}
		.font(.footnote)
		.frame(minHeight: 42)
	}

	var layoutAcessivel: some View {
		VStack(alignment: .leading, spacing: 16) {
			jogadorAcessivel(rotulo: substituicao ? "Entrou" : nil, numero: numeroEsquerda, nome: nomeEsquerda, fezGol: esquerdaFezGol, amarelo: esquerdaAmarelo, cor: substituicao ? .corVerdeTabela : .white)

			if substituicao {
				Divider()

				jogadorAcessivel(rotulo: "Saiu", numero: numeroDireita, nome: nomeDireita, fezGol: direitaFezGol, amarelo: direitaAmarelo, cor: .corLaranja01)
			}
		}
	}

	func jogador( numero: String, nome: String, fezGol: Bool, amarelo: Bool) -> some View {
		HStack(spacing: 8) {
			Text(numero)
				.frame(width: 20, alignment: .leading)

			JogadorTabela(nomeJogador: nome, corFundo: corIcone, amarelo: amarelo, fezGol: fezGol)

			Text(nome)
				.lineLimit(2)
				.fixedSize(horizontal: false, vertical: true)
		}
		.frame(maxWidth: .infinity, alignment: .leading)
	}

	func jogadorAcessivel(rotulo: String?, numero: String, nome: String, fezGol: Bool, amarelo: Bool, cor: Color) -> some View {
		HStack(alignment: .top, spacing: 12) {
			JogadorTabela(nomeJogador: nome, corFundo: corIcone, amarelo: amarelo, fezGol: fezGol)

			VStack(alignment: .leading, spacing: 5) {
				if let rotulo {
					Text(rotulo)
						.font(.caption)
						.foregroundStyle(.corSubtitulo)
				}

				Text("\(numero) \(nome)")
					.font(.headline)
					.foregroundStyle(cor)
					.fixedSize(horizontal: false, vertical: true)

				if fezGol {
					Text("Marcou gol")
						.font(.body)
						.foregroundStyle(.white)
				}

				if amarelo {
					Text("Recebeu cartão amarelo")
						.font(.body)
						.foregroundStyle(.white)
				}
			}
		}
	}

	var labelAcessibilidade: String {
		var resultado = "\(numeroEsquerda), \(nomeEsquerda)"

		if esquerdaFezGol {
			resultado += ", marcou gol"
		}

		if esquerdaAmarelo {
			resultado += ", recebeu cartão amarelo"
		}

		if substituicao {
			resultado += ". Entrou no lugar de \(numeroDireita), \(nomeDireita)"
		}

		return resultado
	}
}

#Preview {
	LinhaTabela(numeroEsquerda: "17", nomeEsquerda: "Fabinho", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: true, numeroDireita: "5", nomeDireita: "Casemiro", direitaFezGol: true, direitaAmarelo: true, temFundo: false)
}
