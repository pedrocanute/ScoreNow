//
//  Escalacao.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//
import SwiftUI

struct Escalacao: View {
	var body: some View {
		ZStack{
			Color.corFundo
				.ignoresSafeArea()
			VStack{
				ZStack{
					Image("campo")
					HStack(spacing: 10){
						Jogador(nomeJogador: "G. Magalhães", numeroCamisa: "10", corFundo: .corVerdeBrasil)
						Jogador(nomeJogador: "G. Magalhães", numeroCamisa: "3", corFundo: .corVerdeBrasil)
						Jogador(nomeJogador: "G. Magalhães", numeroCamisa: "7", corFundo: .corVerdeBrasil)
						Jogador(nomeJogador: "G. Magalhães", numeroCamisa: "19", corFundo: .corVerdeBrasil)
						
					}
					
				}
					
			}
		}
	}
}
#Preview {
	Escalacao()
}
