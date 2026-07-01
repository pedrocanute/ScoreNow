//
//  BotaoLigas.swift
//  Challenge3
//
//  Created by Pedro Canute on 30/06/26.
//
import SwiftUI

struct BotaoLigas<Destino: View>:View {
	let icone: String
	let titulo: String
	let destino: () -> Destino
	
	var body: some View {
		NavigationLink {
			destino()
		} label: {
			ZStack{
				Rectangle()
					.foregroundStyle(.corCard)
					.frame(width: 354, height: 80)
					.cornerRadius(35)
					.preferredColorScheme(.dark)
				HStack{
					ZStack{
						Circle()
							.frame(width: 61, height: 59)
							.foregroundStyle(.white)
						Image(systemName: icone)
							.font(.system(size: 35))
							.foregroundStyle(.black)
					}
					
					Text(titulo)
						.padding(.leading, 20)
						.font(.system(size:18))
						.fontWeight(.regular)
				}
				.frame(maxWidth: .infinity, alignment: .leading)
				.padding(.leading, 35)
				
			}
		}
		.buttonStyle(.plain)
	}
}
#Preview {
	BotaoLigas(icone: "globe.americas.fill", titulo: "Copa do Mundo 2026") { Jogos()}
}
