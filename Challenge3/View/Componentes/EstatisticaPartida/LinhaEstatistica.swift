//
//  LinhaEstatistica.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//

import SwiftUI

struct LinhaEstatistica: View {
	let dadoEsquerdo: String
	let titulo: String
	let dadoDireito: String
	var temDivisoria: Bool = true
	
	var body: some View {
		VStack(spacing: 9){
			HStack(spacing: 12){
				
				Text(dadoEsquerdo)
					.font(.title3)
					.foregroundStyle(.white)
					.frame(width: 60, alignment: .leading)
				
				Text(titulo)
					.font(.subheadline)
					.foregroundStyle(.white)
					.lineLimit(1)
					.frame(maxWidth: .infinity, alignment: .center)
			
				Text(dadoDireito)
					.font(.title3)
					.foregroundStyle(.white)
					.frame(width: 60, alignment: .trailing)
				
			}
			.padding(.horizontal, 22)
			
			if temDivisoria {
				
				Divider()
					.frame(height: 1)
					.background(.corLinha)
			}
		}
		.padding(.horizontal, 24)
		
	}
}
#Preview {
	LinhaEstatistica(dadoEsquerdo: "51%",titulo: "Prec. de passes", dadoDireito: "49%")
}
