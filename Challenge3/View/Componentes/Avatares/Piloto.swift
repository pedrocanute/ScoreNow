//
//  Piloto.swift
//  Challenge3
//
//  Created by Pedro Canute on 02/07/26.
//

import SwiftUI

struct Piloto: View {
	
	let nomePiloto: String
	var podio: Bool = false
	var aoVivo: Bool = false
	let posicao: String
	var construtor: String = "Mercedes"
	var tempo: String = "1:26:37,979"
	var pais: String = "Reino Unido"
	
	let tamanhoPodio: CGFloat = 58
	let tamanhoTabela: CGFloat = 29
	
	var body: some View {
		if podio {
			VStack {
				Circle()
					.foregroundStyle(.clear)
					.frame(width: tamanhoPodio, height: tamanhoPodio)
					.background(
						Image(nomePiloto)
							.resizable()
							.aspectRatio(contentMode: .fill)
							.frame(width: tamanhoPodio, height: tamanhoPodio)
							.clipped()
					)
					.cornerRadius(58)
					.overlay(alignment: .topLeading){
						Text(posicao)
							.font(.title3)
							.foregroundStyle(.corFundo)
							.fontWeight(.medium)
							.background(
								Circle()
									.fill(.corSubtitulo)
									.frame(width: 25, height: 25)
							)
							.offset(x: -5)
						
					}
				Group{
					if aoVivo {
						
						Text(nomePiloto)
							.fontWeight(.semibold)
						
						Text(construtor)
							.font(.caption2)
							
						Bandeira(nomeSelecao: pais, ehCorrida: true)
					} else {
						Text(nomePiloto)
							
						Text(construtor)

							
						Text(tempo)
						
						Bandeira(nomeSelecao: pais, ehCorrida: true)

					}
				}
				.font(.footnote)
				.foregroundStyle(.white)
			
			}
		} else {
			HStack {
				Text(posicao)
					.font(.subheadline)
					.foregroundStyle(.white)
					.padding(.trailing,10)
				
				Circle()
					.foregroundStyle(.clear)
					.frame(width: tamanhoTabela, height: tamanhoTabela)
					.background(
						Image(nomePiloto)
							.resizable()
							.aspectRatio(contentMode: .fill)
							.frame(width: tamanhoTabela, height: tamanhoTabela)
							.clipped()
					)
					.cornerRadius(58)
				Text(nomePiloto)
					.font(.subheadline)
					.lineLimit(1)
					.layoutPriority(1)
			}
		}
	}
}
#Preview {
	Piloto(nomePiloto: "M. Verstappen", podio: true, aoVivo: false, posicao: "1", construtor: "Mercedes", tempo: "1:26:37,979")
}
