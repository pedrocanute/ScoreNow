//
//  Jogador.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//
import SwiftUI

struct JogadorTabela: View {
	let nomeJogador: String
	let corFundo: Color
	let amarelo: Bool
	let fezGol: Bool

	var body: some View {
		Image(nomeJogador)
			.resizable()
			.aspectRatio(contentMode: .fit)
			.frame(width: 34, height: 34)
			.background(corFundo)
			.clipShape(Circle())
			.overlay(alignment: .topLeading) {
				if fezGol {
					Image(systemName: "soccerball.inverse")
						.font(.system(size: 13))
						.foregroundStyle(.green)
						.offset(x: -4, y: -3)
						.accessibilityHidden(true)
				}
			}

			.overlay(alignment: .topTrailing) {
				if amarelo {
					Image(systemName: "rectangle.portrait.fill")
						.font(.system(size: 13))
						.foregroundStyle(.yellow)
						.offset(x: 4, y: -3)
						.accessibilityHidden(true)
				}
			}
			.accessibilityElement(children: .ignore)
			.accessibilityLabel(labelAcessibilidade)
	}

	var labelAcessibilidade: String {
		var partes = [nomeJogador]

		if fezGol {
			partes.append("marcou gol")
		}

		if amarelo {
			partes.append("recebeu cartão amarelo")
		}

		return partes.joined(separator: ", ")
	}
}
#Preview {
	JogadorTabela(nomeJogador: "Gabriel", corFundo: .corVerdeBrasil, amarelo: true, fezGol: true)
}
