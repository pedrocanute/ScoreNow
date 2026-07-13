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
	var tamanho: CGFloat = 40
	var corFundo: Color = .corFutebol
	let destino: () -> Destino
	
	@State var ativarHaptic = false
	
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
					.overlay(alignment: .trailing){
						Image(systemName: "chevron.compact.right")
							.padding(.trailing)
							.foregroundStyle(.corLinha)
					}
				HStack{
					ZStack{
						Circle()
							.frame(width: 61, height: 59)
							.foregroundStyle(corFundo)
						Image(icone)
							.resizable()
							.scaledToFit()
							.frame(width: tamanho, height: tamanho)
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
		.simultaneousGesture(
			TapGesture().onEnded {
				ativarHaptic.toggle()
			}
		)
		.sensoryFeedback(.selection, trigger: ativarHaptic)
		.buttonStyle(.plain)
		
	}
}
#Preview {
	BotaoLigas(icone: "taça", titulo: "Copa do Mundo 2026", tamanho: 40) { Copa()}
}
