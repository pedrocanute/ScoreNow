//
//  Perfil.swift
//  Challenge3
//
//  Created by Pedro Canute on 30/06/26.
//

import SwiftUI

struct Perfil: View {
	var body: some View {
		ZStack{
			Color.corFundo
				.ignoresSafeArea()
			VStack{
				
				Image(systemName: "wrench.and.screwdriver")
					.font(.largeTitle)
					.foregroundStyle(.corFundo)
					.background(
						Circle()
							.foregroundStyle(.corFutebol)
							.frame(width: 100, height: 100)
					)
					.padding(.bottom, 40)
				
				Text("Esta tela ainda está em desenvolvimento.")
					.font(.title3)
					.frame(width: 250)
					.multilineTextAlignment(.center)
					.lineLimit(2)
					.padding(.bottom, 40)
			}
		}
	}
}
#Preview {
	Perfil()
}
