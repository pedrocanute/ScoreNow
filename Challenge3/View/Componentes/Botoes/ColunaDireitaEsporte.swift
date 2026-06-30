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
			BotaoEsporte(titulo: "Corrida", icone: "flag.pattern.checkered") { Futebol () }
			BotaoEsporte(titulo: "MMA", icone: "figure.wrestling") { Futebol() }
				.preferredColorScheme(.dark)
			BotaoEsporte(titulo: "Tênis", icone: "tennisball") { Futebol() }
			BotaoEsporte(titulo: "Baseball", icone: "baseball") { Futebol() }
			
		}
	}
}
#Preview {
	ColunaDireitaEsporte()
}
