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
			BotaoEsporte(titulo: "Vôlei", icone: "volleyball") { Futebol () }
			BotaoEsporte(titulo: "Boxe", icone: "figure.boxing") { Futebol() }
				.preferredColorScheme(.dark)
			BotaoEsporte(titulo: "Basquete", icone: "basketball") { Futebol() }
			BotaoEsporte(titulo: "Rugby", icone: "rugbyball") { Futebol() }
			
		}
	}
}
#Preview {
	ColunaEsquerdaEsporte()
}
