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

	@Environment(\.dynamicTypeSize) private var dynamicTypeSize
	@State private var ativarHaptic = false

	var body: some View {
		NavigationLink {
			destino()
		} label: {
			Group {
				if dynamicTypeSize.isAccessibilitySize {
					layoutAcessivel
				} else {
					layoutPadrao
				}
			}
			.contentShape(Rectangle())
		}
		.simultaneousGesture(
			TapGesture().onEnded {
				ativarHaptic.toggle()
			}
		)
		.sensoryFeedback(.selection, trigger: ativarHaptic)
		.buttonStyle(.plain)
		.accessibilityLabel(titulo)
		.accessibilityHint("Abre a seção de \(titulo)")
	}

	var layoutPadrao: some View {
		
		VStack(spacing: 8) {
			iconeEsporte(tamanho: 90, tamanhoIcone: 40)

			Text(titulo)
				.font(.custom("Play-Regular",size: 14, relativeTo: .body))
				.foregroundStyle(.white)
				.multilineTextAlignment(.center)
				.lineLimit(2)
				.fixedSize(horizontal: false, vertical: true)
				.frame(maxWidth: 90)
		}
	}

	private var layoutAcessivel: some View {
		HStack(spacing: 16) {
			iconeEsporte(
				tamanho: 64,
				tamanhoIcone: 28
			)

			Text(titulo)
				.font(
					.custom(
						"Play-Regular",
						size: 18,
						relativeTo: .headline
					)
				)
				.foregroundStyle(.white)
				.multilineTextAlignment(.leading)
				.fixedSize(horizontal: false, vertical: true)

			Spacer(minLength: 8)

			Image(systemName: "chevron.right")
				.font(.body.bold())
				.foregroundStyle(.corLinha)
				.accessibilityHidden(true)
		}
		.frame(maxWidth: .infinity, alignment: .leading)
		.padding(16)
		.background(.corCard)
		.clipShape(RoundedRectangle(cornerRadius: 20))
	}

	func iconeEsporte(tamanho: CGFloat,tamanhoIcone: CGFloat) -> some View {
		ZStack {
			Circle()
				.foregroundStyle(cor)

			Image(systemName: icone)
				.font(.system(size: tamanhoIcone))
				.foregroundStyle(.corFundo)
				.accessibilityHidden(true)
		}
		.frame(width: tamanho, height: tamanho)
		.glassEffect(.regular.tint(cor).interactive())
	}
}

#Preview {
	BotaoEsporte(titulo: "Futebol", icone: "soccerball.inverse", cor: .corFutebol) { Futebol() }
}
