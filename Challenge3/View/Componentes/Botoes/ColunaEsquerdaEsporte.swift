//
//  ColunaBotaoEsporte.swift
//  Challenge3
//
//  Created by Pedro Canute on 30/06/26.
//

import SwiftUI

struct ColunaEsquerdaEsporte: View {
	var body: some View {
		VStack (spacing: 20){
			BotaoEsporte(titulo: "Vôlei", icone: "volleyball", cor: .corRugbi) { Futebol () }
			BotaoEsporte(titulo: "Boxe", icone: "figure.boxing", cor: .corBasquete) { Futebol() }
				.preferredColorScheme(.dark)
			BotaoEsporte(titulo: "Basquete", icone: "basketball", cor: .corBasquete) { Futebol() }
			BotaoEsporte(titulo: "Rugby", icone: "rugbyball", cor: .corFutebol) { Futebol() }
			
		}
	}
}
#Preview {
	ColunaEsquerdaEsporte()
}
