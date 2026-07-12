//
//  EscalacaoBrasil.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//

import SwiftUI

struct EscalacaoBrasil: View {
	
	@Environment(\.dynamicTypeSize) var dynamicTypeSize
	
	var body: some View {
		
		VStack (spacing: 20){
			if dynamicTypeSize.isAccessibilitySize {
				escalacaoAcessivel
			} else {
				campo
			}
			
			Text("Brasil 4-3-3")
				.font(.headline)
				.foregroundStyle(.white)
			
			TabelaBancoBrasil()
		}
	}
	
	var campo: some View {
		
		ZStack{
			Image("campo")
			
			VStack(spacing: 60) {
				
				HStack(spacing: 40){
					Jogador(nomeJogador: "Vini Jr", numeroCamisa: "7", corFundo: .corVerdeBrasil)
					Jogador(nomeJogador: "M. Cunha", numeroCamisa: "9", corFundo: .corVerdeBrasil)
					Jogador(nomeJogador: "Rayan", numeroCamisa: "26", corFundo: .corVerdeBrasil)
					
				}
				
				
				HStack(spacing: 20){
					Jogador(nomeJogador: "L. Paquetá", numeroCamisa: "20", corFundo: .corVerdeBrasil)
					Jogador(nomeJogador: "Casemiro", numeroCamisa: "5", corFundo: .corVerdeBrasil)
					Jogador(nomeJogador: "B. Guimarães", numeroCamisa: "8", corFundo: .corVerdeBrasil)
					
				}
				
				
				HStack(spacing: 30){
					Jogador(nomeJogador: "D. Santos", numeroCamisa: "16", corFundo: .corVerdeBrasil)
					Jogador(nomeJogador: "Gabriel", numeroCamisa: "3", corFundo: .corVerdeBrasil)
					Jogador(nomeJogador: "Marquinhos", numeroCamisa: "4", corFundo: .corVerdeBrasil)
					Jogador(nomeJogador: "Danilo", numeroCamisa: "13", corFundo: .corVerdeBrasil)
					
				}
				
				Jogador(nomeJogador: "Alisson", numeroCamisa: "1", corFundo: .corVerdeBrasil)
				
			}
		}
	}
	
	var escalacaoAcessivel: some View {
		VStack(alignment: .leading, spacing: 24) {
			setor(titulo: "Ataque", jogadores: [
				("7", "Vini Jr"),
				("9", "M. Cunha"),
				("26", "Rayan")
			])
			setor(titulo: "Meio-campo", jogadores: [
				("20", "L. Paquetá"),
				("5", "Casemiro"),
				("8", "B. Guimarães")
			])
			setor(titulo: "Defesa", jogadores: [
				("16", "D. Santos"),
				("3", "Gabriel"),
				("4", "Marquinhos"),
				("13", "Danilo"),
			])
			setor(titulo: "Goleiro", jogadores: [
				("1", "Alisson")
			])
		}
		.frame(maxWidth: .infinity, alignment: .leading)
	}
	
	func setor(titulo: String, jogadores: [(numero: String, nome: String)]) -> some View {
		VStack(alignment: .leading, spacing: 12){
			Text(titulo)
				.font(.headline)
				.foregroundStyle(.corSubtitulo)
				.accessibilityAddTraits(.isHeader)
			
			ForEach(jogadores, id: \.numero) { jogador in
				HStack(alignment: .firstTextBaseline, spacing: 12) {
					Text(jogador.numero)
						.font(.headline)
						.frame(minWidth: 40, alignment: .leading)
					
					Text(jogador.nome)
						.font(.body)
						.fixedSize(horizontal: false, vertical: true)
				}
				.foregroundStyle(.white)
			}
		}
	}
}
#Preview {
	EscalacaoBrasil()
}
