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
			BotaoEsporte(titulo: "Vôlei", icone: "Volei", cor: .corRugbi) { Construcao () }
			BotaoEsporte(titulo: "Boxe", icone: "Boxe", cor: .corBasquete) { Construcao() }
				
			BotaoEsporte(titulo: "Basquete", icone: "Basquete", cor: .corBasquete) { Construcao() }
			BotaoEsporte(titulo: "Rugby", icone: "Rugbi", cor: .corFutebol) { Construcao() }
			
		}
	}
}
#Preview {
	ColunaEsquerdaEsporte()
}
