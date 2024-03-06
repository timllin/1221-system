//
//  ContentView.swift
//  test-1221system
//
//  Created by Тимур Калимуллин on 05.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ItemView().tabItem {Label("Главная", systemImage: "arrow.up.circle")}
            DummyView().tabItem {Label("Каталог", systemImage: "square.grid.2x2")}
            DummyView().tabItem {Label("Корзина", systemImage: "cart")}
            DummyView().tabItem {Label("Профиль", systemImage: "person")}
        }.accentColor(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
