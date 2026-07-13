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
			Tab ("Esportes", image: "bola") {
				NavigationStack{
					Esportes()
				}
			}
			Tab ("Favoritos", image: "favoritos") {
				Favoritos()
			}
			Tab ("Notícias", image: "news") {
				Noticias()
			}
			Tab ("Perfil", image: "perfil"){
				Perfil()
			}
        }
		.tint(.corFutebol)
		
		
    }
}

#Preview {
    ContentView()
}
