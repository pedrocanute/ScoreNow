//
//  ColunaPiloto.swift
//  ScoreNow
//
//  Created by Pedro Canute on 16/07/26.
//

import SwiftUI

struct TabelaPilotos: View {
	let pilotos: [InfoPiloto]
	
	let alturaDaLinha: CGFloat = 55
	let larguraConstrutor: CGFloat = 72
	let larguraVitorias: CGFloat = 18
	let larguraPontos: CGFloat = 32
	let espacamentoEntreColunas: CGFloat = 8
	
	var body: some View {
		VStack(spacing: 0) {
			cabecalho
			
			ForEach(pilotos) { piloto in
				linha(piloto)
			}
		}
	}
	
	var cabecalho: some View {
		HStack(spacing: espacamentoEntreColunas) {
			Text("Piloto")
				.frame(maxWidth: .infinity, alignment: .leading)
			
			Text("Construtor")
				.frame(width: larguraConstrutor, alignment: .leading)
			
			Text("V")
				.frame(width: larguraVitorias)
			
			Text("PTS")
				.frame(width: larguraPontos, alignment: .trailing)
		}
		.font(.caption)
		.foregroundStyle(.corSubtitulo)
		.padding(.horizontal, 8)
		.frame(height: 30)
	}
	
	func linha(_ piloto: InfoPiloto) -> some View {
		HStack(alignment: .center, spacing: espacamentoEntreColunas) {
			
			Piloto(nomePiloto: piloto.nome, posicao: String(piloto.posicao))
				.lineLimit(1)
				.frame(maxWidth: .infinity, alignment: .leading)
			
			Text(piloto.construtor)
				.font(.caption)
				.lineLimit(1)
				.frame(width: larguraConstrutor,alignment: .leading)
			
			Text("\(piloto.vitorias)")
				.frame(width: larguraVitorias)
			
			Text("\(piloto.pontos)")
				.frame(width: larguraPontos, alignment: .trailing)
		}
		.font(.footnote)
		.padding(.horizontal, 8)
		.frame(height: alturaDaLinha)
		.background {
			if piloto.posicao.isMultiple(of: 2) {
				RoundedRectangle(cornerRadius: 7)
					.fill(Color.corBotaoFavoritar.opacity(0.1))
			}
		}
		.accessibilityElement(children: .combine)
		.accessibilityLabel(
			"\(piloto.posicao)º lugar. \(piloto.nome), \(piloto.construtor), \(piloto.vitorias) vitórias e \(piloto.pontos) pontos."
		)
	}
}
#Preview {
	TabelaPilotos(pilotos: [InfoPiloto(posicao: 1, nome: "M. Verstappen", construtor: "Red Bull R.", vitorias: 5, pontos: 171)])
	//	ColunaPiloto(pilotos: [InfoPiloto(posicao: 1, nome: "M. Verstappen", construtor: "Red Bull R.", vitorias: 5, pontos: 171)])
}
