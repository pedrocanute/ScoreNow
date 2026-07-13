//
//  ColunaBotaoEsporte.swift
//  Challenge3
//
//  Created by Pedro Canute on 30/06/26.
//

import SwiftUI

struct ColunaDireitaEsporte: View {
	var body: some View {
		VStack (spacing: 20){
			BotaoEsporte(titulo: "Corrida", icone: "Corrida", cor: .corBasquete) { Futebol () }
			BotaoEsporte(titulo: "MMA", icone: "MMA", cor: .corMMA) { Construcao() }
				
			BotaoEsporte(titulo: "Tênis", icone: "Tenis", cor: .corTenis) { Construcao() }
			BotaoEsporte(titulo: "Baseball", icone: "Baseball", cor: .corMMA) { Construcao() }
			
		}
	}
}
#Preview {
	ColunaDireitaEsporte()
}
