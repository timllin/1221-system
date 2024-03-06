//
//  ItemView.swift
//  test-1221system
//
//  Created by Тимур Калимуллин on 05.02.2024.
//

import SwiftUI

struct ItemView: View {
    var body: some View {
        NavigationView {
            VStack {
                ItemInfoView() 
                AddToCartView()
            }.toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                    } label: {
                        Image(systemName: "arrow.backward")
                            .foregroundColor(.green)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationBarTrailingItems()
                }
            }
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
