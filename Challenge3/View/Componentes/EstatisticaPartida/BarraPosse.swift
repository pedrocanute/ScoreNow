//
//  BarraPosse.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//

import SwiftUI

struct BarraPosse: View {
	let posseDeBola: CGFloat
	var calculoTamanhoCapsule: CGFloat {
		354 * (posseDeBola / 100)
	}
	var capsulaInferior: CGFloat {
		354 - calculoTamanhoCapsule
	}
	
	var body: some View {
		ZStack{
			Capsule()
				.fill(.corVermelhoJapao)
				.stroke(.corFundo, lineWidth: 3)
				.frame(width: 354, height: 45)
				.overlay(alignment: .leading) {
					Capsule()
						.fill(.corVerdeBrasil)
						.stroke(.corFundo, lineWidth: 3)
						.frame(width: calculoTamanhoCapsule, height: 45)
				}
			LinhaEstatistica(dadoEsquerdo: "69%", titulo: "Posse de Bola", dadoDireito: "31%", temDivisoria: false)

			
		}
	}
}
#Preview {
	BarraPosse(posseDeBola: 69)
}
