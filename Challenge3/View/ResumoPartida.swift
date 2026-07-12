//
//  ResumoPartida.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//

import SwiftUI

struct ResumoPartida: View {
	
	@Environment(\.dynamicTypeSize) var dynamicTypeSize
	
	var body: some View {
		
		VStack(spacing: dynamicTypeSize.isAccessibilitySize ? 20 : 8) {
			
			SubCategoria(titulo: "Estatísticas da Partida", ehSubtitulo: false)
			
			BarraPosse(posseDeBola: 69)
			Group {
				
				LinhaEstatistica(dadoEsquerdo: "51%", titulo: "Prec. de passes", dadoDireito: "49%")
				
				LinhaEstatistica(dadoEsquerdo: "43", titulo: "Cruzamentos", dadoDireito: "11")
				
				LinhaEstatistica(dadoEsquerdo: "6", titulo: "Escanteios", dadoDireito: "2")
				
				LinhaEstatistica(dadoEsquerdo: "21", titulo: "Lances", dadoDireito: "16")
				
				LinhaEstatistica(dadoEsquerdo: "7", titulo: "Chutes ao gol", dadoDireito: "2")
				
				LinhaEstatistica(dadoEsquerdo: "4", titulo: "Faltas cometidas", dadoDireito: "13")
				
				LinhaEstatistica(dadoEsquerdo: "2", titulo: "Cartões amarelos", dadoDireito: "3")
			}
			.padding(.horizontal,15)
		}
	}
}
#Preview {
	ResumoPartida()
}
