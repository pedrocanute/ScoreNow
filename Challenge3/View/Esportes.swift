//
//  Esportes.swift
//  Challenge3
//
//  Created by Pedro Canute on 30/06/26.
//

import SwiftUI

struct Esportes: View {
	var body: some View {
		VStack (spacing: 70){
			Text("Esportes")
				.font(.largeTitle)
				.frame(maxWidth: .infinity, alignment: .leading)
				.padding(.leading, 24)
				
			HStack (spacing: 40) {
				VStack (spacing: 20){
					
					NavigationLink{
						Futebol()
					} label: {
						VStack{
							
							ZStack{
								Circle()
									.frame(maxWidth: 90, maxHeight: 90)
									.foregroundStyle(.corBotaoEsporte)
								Image(systemName: "volleyball")
									.foregroundStyle(.white)
									.font(.system(size: 40))
							}
							Text("Vôlei")
								.font(.system(size:14))
						}
					}
					.buttonStyle(.plain)
					.preferredColorScheme(.dark)
					
					NavigationLink{
						Futebol()
					} label: {
						VStack{
							
							ZStack{
								Circle()
									.frame(maxWidth: 90, maxHeight: 90)
									.foregroundStyle(.corBotaoEsporte)
								Image(systemName: "figure.boxing")
									.foregroundStyle(.white)
									.font(.system(size: 40))
							}
							Text("Boxe")
								.font(.system(size:14))
						}
					}
					.buttonStyle(.plain)
					.preferredColorScheme(.dark)
					
					
					NavigationLink{
						Futebol()
					} label: {
						VStack{
							
							ZStack{
								Circle()
									.frame(maxWidth: 90, maxHeight: 90)
									.foregroundStyle(.corBotaoEsporte)
								Image(systemName: "basketball")
									.foregroundStyle(.white)
									.font(.system(size: 40))
							}
							Text("Basquete")
								.font(.system(size:14))
								.multilineTextAlignment(.center)
							
						}
					}
					.buttonStyle(.plain)
					.preferredColorScheme(.dark)
					
					NavigationLink{
						Futebol()
					} label: {
						VStack{
							
							ZStack{
								Circle()
									.frame(maxWidth: 90, maxHeight: 90)
									.foregroundStyle(.corBotaoEsporte)
								Image(systemName: "flag.pattern.checkered")
									.foregroundStyle(.white)
									.font(.system(size: 40))
							}
							Text("Corrida")
								.multilineTextAlignment(.center)
								.font(.system(size:14))
							
						}
					}
					.buttonStyle(.plain)
					.preferredColorScheme(.dark)
					
				}
				VStack (spacing: 20){
					
					NavigationLink{
						Futebol()
					} label: {
						VStack{
							
							ZStack{
								Circle()
									.frame(maxWidth: 90, maxHeight: 90)
									.foregroundStyle(.corBotaoEsporte)
								Image(systemName: "soccerball")
									.foregroundStyle(.white)
									.font(.system(size: 40))
							}
							Text("Futebol")
								.font(.system(size:14))
						}
					}
					.buttonStyle(.plain)
					.preferredColorScheme(.dark)
					
					NavigationLink{
						Futebol()
					} label: {
						VStack{
							
							ZStack{
								Circle()
									.frame(maxWidth: 90, maxHeight: 90)
									.foregroundStyle(.corBotaoEsporte)
								Image(systemName: "american.football")
									.foregroundStyle(.white)
									.font(.system(size: 40))
							}
							Text("Futebol\nAmericano")
								.font(.system(size:14))
								.multilineTextAlignment(.center)
						}
					}
					.buttonStyle(.plain)
					.preferredColorScheme(.dark)
					
					
					NavigationLink{
						Futebol()
					} label: {
						VStack{
							
							ZStack{
								Circle()
									.frame(maxWidth: 90, maxHeight: 90)
									.foregroundStyle(.corBotaoEsporte)
								Image(systemName: "figure.golf")
									.foregroundStyle(.white)
									.font(.system(size: 40))
							}
							Text("Golf")
								.font(.system(size:14))
								
							
						}
					}
					.buttonStyle(.plain)
					.preferredColorScheme(.dark)
					
					NavigationLink{
						Futebol()
					} label: {
						VStack{
							
							ZStack{
								Circle()
									.frame(maxWidth: 90, maxHeight: 90)
									.foregroundStyle(.corBotaoEsporte)
								Image(systemName: "figure.surfing")
									.foregroundStyle(.white)
									.font(.system(size: 40))
							}
							Text("Surf")
								.font(.system(size:14))
								
							
						}
					}
					.buttonStyle(.plain)
					.preferredColorScheme(.dark)
					
				}
				.offset(y:-50)
				
				VStack (spacing: 20){
					
					NavigationLink{
						Futebol()
					} label: {
						VStack{
							
							ZStack{
								Circle()
									.frame(maxWidth: 90, maxHeight: 90)
									.foregroundStyle(.corBotaoEsporte)
								Image(systemName: "rugbyball")
									.foregroundStyle(.white)
									.font(.system(size: 40))
							}
							Text("Rugby")
								.font(.system(size:14))
						}
					}
					.buttonStyle(.plain)
					.preferredColorScheme(.dark)
					
					NavigationLink{
						Futebol()
					} label: {
						VStack{
							
							ZStack{
								Circle()
									.frame(maxWidth: 90, maxHeight: 90)
									.foregroundStyle(.corBotaoEsporte)
								Image(systemName: "figure.wrestling")
									.foregroundStyle(.white)
									.font(.system(size: 40))
							}
							Text("MMA")
								.font(.system(size:14))
						}
					}
					.buttonStyle(.plain)
					.preferredColorScheme(.dark)
					
					
					NavigationLink{
						Futebol()
					} label: {
						VStack{
							
							ZStack{
								Circle()
									.frame(maxWidth: 90, maxHeight: 90)
									.foregroundStyle(.corBotaoEsporte)
								Image(systemName: "tennisball")
									.foregroundStyle(.white)
									.font(.system(size: 40))
							}
							Text("Tênis")
								.font(.system(size:14))
								
							
						}
					}
					.buttonStyle(.plain)
					.preferredColorScheme(.dark)
					
					NavigationLink{
						Futebol()
					} label: {
						VStack{
							
							ZStack{
								Circle()
									.frame(maxWidth: 90, maxHeight: 90)
									.foregroundStyle(.corBotaoEsporte)
								Image(systemName: "baseball")
									.foregroundStyle(.white)
									.font(.system(size: 40))
							}
							Text("Baseball")
								.font(.system(size:14))
								
							
						}
					}
					.buttonStyle(.plain)
					.preferredColorScheme(.dark)
					
				}
			}
			.frame (maxWidth: .infinity, alignment: .leading)
			.padding(.leading, 24)
			
		}
	}
}
#Preview {
	Esportes()
}
