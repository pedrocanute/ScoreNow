//
//  ColunaBotaoEsporte.swift
//  Challenge3
//
//  Created by Pedro Canute on 30/06/26.
//

import SwiftUI

struct ColunaCentroEsporte: View {
	var body: some View {
		VStack (spacing: 20){
			BotaoEsporte(titulo: "Futebol", icone: "soccerball.inverse", cor: .corFutebol) { Futebol () }
			BotaoEsporte(titulo: "Futebol Americano", icone: "american.football", cor: .corRugbi) { Construcao() }
				
			BotaoEsporte(titulo: "Golfe", icone: "figure.golf", cor: .corFutebol) { Construcao() }
			BotaoEsporte(titulo: "Surf", icone: "figure.surfing", cor: .corSurf) { Construcao() }
			
		}
	}
}
#Preview {
	ColunaCentroEsporte()
}
