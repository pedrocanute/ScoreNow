//
//  ResumoPartida.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//

import SwiftUI

struct ResumoPartida: View {
	var body: some View {
		ZStack {
			Color.corFundo
				.ignoresSafeArea()
			VStack {
				
				SubCategoria(titulo: "Estatísticas da Partida", ehSubtitulo: false)
				
				BarraPosse(posseDeBola: 69)
					.padding(.bottom, 8)
					
				
				LinhaEstatistica(dadoEsquerdo: "51%", titulo: "Prec. de passes", dadoDireito: "49%")
					.padding(.bottom, 8)
				
				LinhaEstatistica(dadoEsquerdo: "43", titulo: "Cruzamentos", dadoDireito: "11")
					.padding(.bottom, 8)
				LinhaEstatistica(dadoEsquerdo: "6", titulo: "Escanteios", dadoDireito: "2")
					.padding(.bottom, 8)
				LinhaEstatistica(dadoEsquerdo: "21", titulo: "Lances", dadoDireito: "16")
					.padding(.bottom, 8)
				LinhaEstatistica(dadoEsquerdo: "7", titulo: "Chutes ao gol", dadoDireito: "2")
					.padding(.bottom, 8)
				LinhaEstatistica(dadoEsquerdo: "4", titulo: "Faltas cometidas", dadoDireito: "13")
					.padding(.bottom, 8)
				LinhaEstatistica(dadoEsquerdo: "2", titulo: "Cartões amarelos", dadoDireito: "3")
					.padding(.bottom, 8)
			}
			
		}
	}
}
#Preview {
	ResumoPartida()
}
