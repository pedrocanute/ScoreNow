//
//  BotaoEsporte.swift
//  Challenge3
//
//  Created by Pedro Canute on 30/06/26.
//

import SwiftUI

struct BotaoEsporte<Destino: View>: View {
	
	let titulo: String
	let icone: String
	let cor: Color
	let destino: () -> Destino
	
		
	var body: some View {
		NavigationLink{
			destino()
		} label: {
			VStack {
				
				ZStack {
					Circle()
						.frame(maxWidth: 90, maxHeight: 90)
						.foregroundStyle(cor)
					Image(systemName: icone)
						.font(.system(size: 40))
						.foregroundStyle(.black)
				}
				Text(titulo)
					.font(.system(size: 14))
					.foregroundStyle(.white)
					.multilineTextAlignment(.center)
					.frame(maxWidth: 90)
			}
		}
		.preferredColorScheme(.dark)
		.buttonStyle(.plain)
	}
}
#Preview {
	BotaoEsporte(titulo: "Futebol", icone: "football", cor: .red) { Futebol() }
}
