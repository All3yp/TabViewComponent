//
//  ContentView.swift
//  TabViewComponent
//
//  Created by Alley Pereira on 29/05/23.
//

import SwiftUI

// MARK: - Teste de Views pra testar a Tab
struct FirstTabView: View {
    var body: some View {
        Text("Primeira aba 🖖")
            .font(.system(size: 30, weight: .regular, design: .rounded))
    }
}

struct SecondTabView: View {
    var body: some View {
        Text("Segunda aba 🐈")
            .font(.system(size: 30, weight: .medium, design: .rounded))
    }
}

struct ThirdTabView: View {
    var body: some View {
        VStack {
            Text("Terceira aba 🎉")
                .font(.system(size: 30, weight: .bold, design: .rounded))
        }
    }
}

// MARK: - ContentView
struct ContentView: View {
    
    // MARK: - Proprieties
    let tabs: [TabViewComponent] = [
        .init(
            id: 0,
            text: "A",
            image: "star",
            view: FirstTabView()
        ),
        .init(
            id: 1,
            text: "B",
            image: "leaf",
            view: SecondTabView()
        ),
        .init(
            id: 2,
            text: "C",
            image: "ellipsis.circle",
            view: ThirdTabView()
        )
    ]

    @State private var selectedTab: Int = 0
    
    // MARK: - Body View
    var body: some View {
        
        // Magica funcionando aqui 👩‍💻
        TabView(selection: $selectedTab) {
            ForEach(tabs) { tab in
                tab.view
                    .tabItem {
                        Label(tab.text, systemImage: tab.image)
                    }
                    .tag(tab.id)
            }
        } // : TabView
    } // : View
}

// MARK: - PreviewProvider
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
