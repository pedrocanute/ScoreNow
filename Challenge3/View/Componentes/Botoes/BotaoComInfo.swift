//
//  BotaoComInfo.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//

import SwiftUI

struct BotaoComInfo: View {
	let paisEsquerda: String
	let paisDireita: String
	
	var body: some View {
		HStack(spacing: 36){
			BotaoFavoritar(nomePais: paisEsquerda)
			VStack{
				Text("2 x 1")
					.font(.largeTitle)
					.fontWeight(.heavy)
					.foregroundStyle(.white)
				Relogio(segundosIniciais: 1542)
				
			}
			BotaoFavoritar(nomePais: paisDireita)
			
		}
	}
}
#Preview {
	BotaoComInfo(paisEsquerda: "Brasil", paisDireita: "Japão")
}
