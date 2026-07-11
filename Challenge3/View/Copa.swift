//
//  Jogos.swift
//  Challenge3
//
//  Created by Pedro Canute on 30/06/26.
//

import SwiftUI

struct Copa: View {
	@State var favoritou: Bool = false
	
	var body: some View {
		ZStack{
			Color.corFundo
				.ignoresSafeArea()
			
			ScrollView {
				VStack{
					
					IconeCategoria(nomeIcone: "taça", titulo: "Copa do Mundo 2026", tamanho: 60, personalizado: true)
					
					Button {
						
					} label: {
						
						Text("Ver Chaveamento")
							.font(.headline)
							.foregroundStyle(.white)
							.padding(.horizontal, 16)
							.padding(.vertical, 10)
					}
					.buttonStyle(.glass)
					
					SubCategoria(titulo: "Ao Vivo")
					
					CardJogos(titulo: "Dezesseis avos de final", aoVivo: true, paisEsquerda: "Brasil", paisDireita: "Japão"){ Estatistica()}
						.padding(.horizontal, 24)
					
					SubCategoria(titulo: "Ainda hoje")
					
					CardJogos(titulo: "Dezesseis avos de final", aoVivo: false, paisEsquerda: "Espanha", paisDireita: "Áustria"){ Copa()}
						.padding(.horizontal, 24)
					CardJogos(titulo: "Dezesseis avos de final", aoVivo: false, paisEsquerda: "Portugal", paisDireita: "Croácia", horario: "20:00"){ Copa()}
						.padding(.horizontal, 24)
					
					SubCategoria(titulo: "Amanhã")
					
					CardJogos(titulo: "Dezesseis avos de final", aoVivo: false, paisEsquerda: "Costa do Marfim", paisDireita: "Noruega", horario: "14:00"){ Copa()}
						.padding(.horizontal, 24)
					
					CardJogos(titulo: "Dezesseis avos de final", aoVivo: false, paisEsquerda: "França", paisDireita: "Suécia", horario: "16:00"){ Copa()}
						.padding(.horizontal, 24)
					
					CardJogos(titulo: "Dezesseis avos de final", aoVivo: false, paisEsquerda: "México", paisDireita: "Equador", horario: "20:00"){ Copa()}
						.padding(.horizontal, 24)
				}
			}
			.scrollEdgeEffectStyle(.soft, for: .top)
		}
		.toolbar {
			ToolbarItem(placement: .topBarTrailing) {
				Button {
					favoritou.toggle()
				} label: {
					Image(systemName: favoritou ?  "bookmark.fill" : "bookmark")
						.foregroundStyle(favoritou ? Color.corVerdeLogo : Color.white)
				}
			}
		}
	}
}
#Preview {
	Copa()
}
