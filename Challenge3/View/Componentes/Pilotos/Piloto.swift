//
//  Piloto.swift
//  Challenge3
//
//  Created by Pedro Canute on 02/07/26.
//

import SwiftUI

struct Piloto: View {
	var tamanhoPiloto: CGFloat = 29
	var body: some View {
		Circle()
			.foregroundStyle(.clear)
			.frame(width: tamanhoPiloto, height: tamanhoPiloto)
			.background(
				Image("verstappen")
					.resizable()
					.aspectRatio(contentMode: .fill)
					.frame(width: tamanhoPiloto, height: tamanhoPiloto)
					.clipped()
			)
			.cornerRadius(58)
	}
}
#Preview {
	Piloto(tamanhoPiloto: 58)
}
