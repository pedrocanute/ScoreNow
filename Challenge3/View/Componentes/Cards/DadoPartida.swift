//
//  DadoPartida.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//

import SwiftUI

struct DadoPartida:View {
	let aoVivo: Bool
	let paisEsquerda: String
	let paisDireita: String
	var horario: String = "16:00"
	
	var body: some View {
		
		HStack(spacing: 15) {
			Bandeira(nomeSelecao: paisEsquerda)
			Divider()
				.frame(width: 1, height: 90)
				.background(.corLinha)
			Group {
				
				if aoVivo {
					
					VStack{
						Text("2 x 1")
							.font(.largeTitle)
							.fontWeight(.heavy)
							.foregroundStyle(.white)
						Relogio(segundosIniciais: 1542)
						
					}
				} else {
					Text(horario)
						.foregroundStyle(.white)
					
				}
			}
			.frame(width: 90, height: 90)
			
			Divider()
				.frame(width: 1, height: 90)
				.background(.corLinha)
			Bandeira(nomeSelecao: paisDireita)
			
		}
	}
}
#Preview {
	DadoPartida(aoVivo: true, paisEsquerda: "Brasil", paisDireita: "Japão", horario: "16:00")
}
