//
//  NavigationBarTrailingItems.swift
//  test-1221system
//
//  Created by Тимур Калимуллин on 05.02.2024.
//

import SwiftUI

struct NavigationBarTrailingItems: View {
    var body: some View {
        HStack {
            Button {
            } label: {
                Image(systemName: "doc.plaintext")
                    .foregroundColor(.green)
            }
            Button {
            } label: {
                Image(systemName: "square.and.arrow.up")
                    .foregroundColor(.green)
            }
            Button {
            } label: {
                Image(systemName: "heart")
                    .foregroundColor(.green)
            }
        }
    }
}

struct NavigationBarTrailingItems_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarTrailingItems()
    }
}
