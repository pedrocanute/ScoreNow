//
//  Construcao.swift
//  ScoreNow
//
//  Created by Pedro Canute on 12/07/26.
//

import SwiftUI

struct Construcao: View {
	@State var ativarHaptic: Bool = false
	var body: some View {
		ZStack{
			Color.corFundo
				.ignoresSafeArea()
			VStack{
				
				Text("Esta tela ainda está em desenvolvimento")
					.font(.custom("Play-Bold", size: 20, relativeTo: .title))
					.frame(width: 250)
					.multilineTextAlignment(.center)
					.lineLimit(2)
					.padding(.bottom, 40)
				Image(systemName: "wrench.and.screwdriver")
					.font(.largeTitle)
					.foregroundStyle(.corFundo)
					.background(
						Circle()
							.foregroundStyle(.corFutebol)
							.frame(width: 100, height: 100)
					)
					.padding(.bottom, 40)
				
				
				
				Text("Confira as telas disponíveis abaixo")
					.font(.headline)
					.frame(width: 250)
					.multilineTextAlignment(.center)
					.lineLimit(2)
					.padding(.bottom, 40)
				HStack(spacing: 80){
					BotaoEsporte(titulo: "Futebol", icone: "soccerball.inverse", cor: .corFutebol) { Futebol()}
					BotaoEsporte(titulo: "Corrida", icone: "flag.pattern.checkered", cor: .corLaranja01) { Futebol()}

					
				}
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
	Construcao()
}
