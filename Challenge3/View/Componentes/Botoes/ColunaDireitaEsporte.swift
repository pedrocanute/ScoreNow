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
			BotaoEsporte(titulo: "Corrida", icone: "flag.pattern.checkered", cor: .corBasquete) { Futebol () }
			BotaoEsporte(titulo: "MMA", icone: "figure.wrestling", cor: .corMMA) { Construcao() }
				
			BotaoEsporte(titulo: "Tênis", icone: "tennisball", cor: .corTenis) { Construcao() }
			BotaoEsporte(titulo: "Baseball", icone: "baseball", cor: .corMMA) { Construcao() }
			
		}
	}
}
#Preview {
	ColunaDireitaEsporte()
}
