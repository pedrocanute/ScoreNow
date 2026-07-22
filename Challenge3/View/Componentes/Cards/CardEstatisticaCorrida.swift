//
//  CardEstatisticaCorrida.swift
//  ScoreNow
//
//  Created by Pedro Canute on 16/07/26.
//

import SwiftUI

struct CardEstatisticaCorrida: View {

	let tamanhoFundoCard: CGFloat = 10
	@Environment(\.dynamicTypeSize) private var dynamicTypeSize
	
	let pilotos: [InfoPiloto] = [
		
		InfoPiloto(posicao: 1, nome: "K. Antonelli", construtor: "Mercedes", vitorias: 5, pontos: 171),
		InfoPiloto(posicao: 2, nome: "G. Russel", construtor: "Mercedes", vitorias: 2, pontos: 131),
		InfoPiloto(posicao: 3, nome: "L. Hamilton", construtor: "Ferrari", vitorias: 1, pontos: 125),
		InfoPiloto(posicao: 4, nome: "O. Piastri", construtor: "McLaren", vitorias: 0, pontos: 80),
		InfoPiloto(posicao: 5, nome: "L. Norris", construtor: "McLaren", vitorias: 0, pontos: 79),
		InfoPiloto(posicao: 6, nome: "C. Leclerc", construtor: "Ferrari", vitorias: 0, pontos: 79),
		InfoPiloto(posicao: 7, nome: "M. Verstappen", construtor: "Red Bull R.", vitorias: 0, pontos: 73),
		InfoPiloto(posicao: 8, nome: "I. Hadjar", construtor: "Red Bull R.", vitorias: 0, pontos: 42),
		InfoPiloto(posicao: 9, nome: "P. Gasly", construtor: "Alpine", vitorias: 0, pontos: 41),
		InfoPiloto(posicao: 10, nome: "L. Lawson", construtor: "R. Bulls", vitorias: 0, pontos: 30),
		InfoPiloto(posicao: 11, nome: "O. Bearman", construtor: "Haas", vitorias: 0, pontos: 18),
		InfoPiloto(posicao: 12, nome: "F. Colapinto", construtor: "Alpine", vitorias: 0, pontos: 16),
		InfoPiloto(posicao: 13, nome: "A. Lindblad", construtor: "R. Bulls", vitorias: 0, pontos: 14),
		InfoPiloto(posicao: 14, nome: "C. Sainz Jr", construtor: "Mercedes", vitorias: 0, pontos: 6),
		InfoPiloto(posicao: 15, nome: "A. Albon", construtor: "Williams", vitorias: 0, pontos: 5),
		InfoPiloto(posicao: 16, nome: "E. Ocon", construtor: "Haas", vitorias: 0, pontos: 3),
		InfoPiloto(posicao: 17, nome: "G. Bortoleto", construtor: "Audi", vitorias: 0, pontos: 2),
		InfoPiloto(posicao: 18, nome: "F. Alonso", construtor: "A. Martin", vitorias: 0, pontos: 1),
		InfoPiloto(posicao: 19, nome: "N. Hulkenberg", construtor: "Audi", vitorias: 0, pontos: 0),
		InfoPiloto(posicao: 20, nome: "V. Bottas", construtor: "Cadillac", vitorias: 0, pontos: 0),
		InfoPiloto(posicao: 21, nome: "S. Perez", construtor: "Cadillac", vitorias: 0, pontos: 0),
		InfoPiloto(posicao: 22, nome: "L. Stroll", construtor: "A. Martin", vitorias: 0, pontos: 0)
		
	]
	
	var body: some View {
		
		Group {
			if dynamicTypeSize.isAccessibilitySize {
				cardAcessivel
			} else {
				cardPadrao
			}
		}
		.padding(tamanhoFundoCard)
		.frame(maxWidth: .infinity)
		.background(.corCard)
		.clipShape(RoundedRectangle(cornerRadius: 20))
	}
	
	var cardPadrao: some View {
		
		VStack (spacing: 20){
			
			VStack {
				Text("Grande Prêmio Áustria")
					.font(.headline)
				
				Text("71 voltas - Corrida encerrada")
					.font(.footnote)
			}
			
			HStack(spacing: 8) {
				Piloto(nomePiloto: "G. Russel", podio: true, aoVivo: false, posicao: "1")
					.frame(maxWidth: .infinity)
				
				Divider()
					.frame(width: 1, height: 125)
					.background(.corLinha)
				
				Piloto(nomePiloto: "M. Verstappen", podio: true, aoVivo: false, posicao: "2", construtor: "Red Bull R.", tempo: "+1,611 s", pais: "Países Baixos")
					.frame(maxWidth: .infinity)
				
				Divider()
					.frame(width: 1, height: 125)
					.background(.corLinha)
				
				Piloto(nomePiloto: "K. Antonelli", podio: true, aoVivo: false, posicao: "3", construtor: "Mercedes", tempo: "+ 1,986 s", pais: "Itália")
					.frame(maxWidth: .infinity)
			}
			.padding(.horizontal, 16)

			
			SubCategoria(titulo: "Classificação do Campeonato", ehSubtitulo: false)
				.padding(.bottom, 10)
			
			ZStack(alignment: .top) {
				VStack(spacing: 8) {
					Color.clear
					
					ForEach(Array(pilotos.enumerated()), id: \.element.id) { indice, _ in
						RoundedRectangle(cornerRadius: 7)
							.fill(indice.isMultiple(of: 2) ? Color.clear : Color.corBotaoFavoritar.opacity(0.1))
							.frame(height: 45)
					}
				}
				
				HStack(alignment: .top) {
					ColunaPiloto(pilotos: pilotos)
						.frame(width: 160, alignment: .leading)
					
					ColunaConstrutor(pilotos: pilotos)
						.frame(width: 80, alignment: .trailing)
					
					ColunaV(pilotos: pilotos)
						.frame(width: 30, alignment: .center)
					
					ColunaPTS(pilotos: pilotos)
						.frame(width: 30, alignment: .trailing)
				}
				.padding(.horizontal, 8)
			}
		}
	}
	
	var cardAcessivel: some View {
		
		VStack(alignment: .leading, spacing: 24) {
			VStack(alignment: .leading, spacing: 12) {
				Text("Último Evento")
					.font(.title2.bold())
					.fixedSize(horizontal: false, vertical: true)
				
				Divider()
				
				Text("Grande Prêmio Áustria")
					.font(.headline)
					.fixedSize(horizontal: false, vertical: true)
				
				Text("71 voltas - Corrida encerrada")
					.font(.body)
					.foregroundStyle(.corSubtitulo)
					.fixedSize(horizontal: false, vertical: true)
			}
			
			VStack(alignment: .leading, spacing: 16) {
				pilotoPodioAcessivel(posicao: 1, nome: "G. Russel", construtor: "Mercedes", tempo: "1:26:37,979", pais: "Reino Unido")
				
				pilotoPodioAcessivel(posicao: 2, nome: "M. Verstappen", construtor: "Red Bull R.", tempo: "+1,611 segundos", pais: "Países Baixos")
				
				pilotoPodioAcessivel(posicao: 3, nome: "K. Antonelli", construtor: "Mercedes", tempo: "+1,986 segundos", pais: "Itália")
			}
			
			VStack(alignment: .leading, spacing: 12) {
				Text("Classificação do Campeonato")
					.font(.title2.bold())
					.fixedSize(horizontal: false, vertical: true)
				
				Divider()
				
				ForEach(Array(pilotos.enumerated()), id: \.element.id) { indice, piloto in
					linhaClassificacaoAcessivel(piloto: piloto, fundo: !indice.isMultiple(of: 2))
				}
			}
		}
		.frame(maxWidth: .infinity, alignment: .leading)
		.padding(.vertical, 12)
	}
	
	func pilotoPodioAcessivel(posicao: Int, nome: String, construtor: String, tempo: String, pais: String) -> some View {
		
		HStack(alignment: .top, spacing: 12) {
			Text("\(posicao)")
				.font(.title2.bold())
				.frame(minWidth: 28, alignment: .leading)
			
			Image(nome)
				.resizable()
				.scaledToFill()
				.frame(width: 56, height: 56)
				.clipShape(Circle())
				.accessibilityHidden(true)
			
			VStack(alignment: .leading, spacing: 5) {
				Text(nome)
					.font(.title3.bold())
					.fixedSize(horizontal: false, vertical: true)
				
				Text(construtor)
					.font(.body)
					.foregroundStyle(.corSubtitulo)
					.fixedSize(horizontal: false, vertical: true)
				
				Text(tempo)
					.font(.body)
					.fixedSize(horizontal: false, vertical: true)
				
				Text(pais)
					.font(.body)
					.foregroundStyle(.corSubtitulo)
					.fixedSize(horizontal: false, vertical: true)
			}
		}
		.frame(maxWidth: .infinity, alignment: .leading)
		.accessibilityElement(children: .combine)
		.accessibilityLabel("\(posicao)º lugar. \(nome), \(construtor), \(tempo), \(pais).")
	}
	
	func linhaClassificacaoAcessivel(piloto: InfoPiloto, fundo: Bool) -> some View {
		
		HStack(alignment: .top, spacing: 12) {
			Text("\(piloto.posicao)")
				.font(.title3.bold())
				.frame(minWidth: 28, alignment: .leading)
			
			Image(piloto.nome)
				.resizable()
				.scaledToFill()
				.frame(width: 50, height: 50)
				.clipShape(Circle())
				.accessibilityHidden(true)
			
			VStack(alignment: .leading, spacing: 6) {
				Text(piloto.nome)
					.font(.headline)
					.fixedSize(horizontal: false, vertical: true)
				
				Text(piloto.construtor)
					.font(.body)
					.foregroundStyle(.corSubtitulo)
					.fixedSize(horizontal: false, vertical: true)
				
				HStack(spacing: 16) {
					Text("\(piloto.vitorias) vitórias")
					
					Text("\(piloto.pontos) pontos")
						.fontWeight(.semibold)
				}
				.font(.body)
				.fixedSize(horizontal: false, vertical: true)
			}
		}
		.padding(12)
		.frame(maxWidth: .infinity, alignment: .leading)
		.background {
			if fundo {
				RoundedRectangle(cornerRadius: 10)
					.fill(.corBotaoFavoritar.opacity(0.1))
			}
		}
		.accessibilityElement(children: .combine)
		.accessibilityLabel("\(piloto.posicao)º lugar. \(piloto.nome), \(piloto.construtor), \(piloto.vitorias) vitórias e \(piloto.pontos) pontos.")
	}

}
#Preview {
	ScrollView{
		CardEstatisticaCorrida()
			.padding(.horizontal, 24)
	}
}
