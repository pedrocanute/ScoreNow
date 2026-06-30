import SwiftUI
import Playgrounds

@main struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
			Tab ("Esportes", systemImage: "soccerball") {
				NavigationStack{
					Esportes()
					
				}
			}
			Tab ("Favoritos", systemImage: "star") {
				Favoritos()
			}
			Tab ("Notícias", systemImage: "newspaper") {
				Noticias()
			}
			Tab ("Perfil", systemImage: "person"){
				Perfil()
			}
        }
		.tabViewStyle(.automatic)
		.preferredColorScheme(.dark)
		
    }
}

#Preview {
    ContentView()
}
