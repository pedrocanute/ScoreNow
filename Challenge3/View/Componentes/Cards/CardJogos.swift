//
//  CardJogos.swift
//  Challenge3
//
//  Created by Pedro Canute on 09/07/26.
//

import SwiftUI

struct CardJogos<Destino: View>:View {
	
	let titulo: String
	let aoVivo: Bool
	let paisEsquerda: String
	let paisDireita: String
	var horario: String = "16:00"
	
	let destino: () -> Destino
	
	@State var ativarHaptic = false
	
	var body: some View {
		NavigationLink{
			destino()
		} label:{
			
			ZStack (alignment: .trailing){
				VStack{
					Text(titulo)
						.font(.caption)
						.foregroundStyle(.corSubtitulo)
						.padding(.top, 8)
					
					DadoPartida(aoVivo: aoVivo, paisEsquerda: paisEsquerda, paisDireita: paisDireita, horario: horario)
					
				}
				.frame(maxWidth: .infinity)
				Image(systemName: "chevron.compact.right")
					.font(.subheadline)
					.foregroundStyle(.corLinha)
					.padding(.trailing, 10)
			}
			.frame(maxWidth: .infinity)
			.frame(height: 140)
			.background(.corCard)
			.clipShape(RoundedRectangle(cornerRadius: 20))
			.shadow(color: .black.opacity(0.45), radius: 2, x: 0, y: 3)
			.padding(.bottom, 6)
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
	CardJogos(titulo: "Dezesseis avos de final", aoVivo: true, paisEsquerda: "Brasil", paisDireita: "Japão") { Copa()}
}
