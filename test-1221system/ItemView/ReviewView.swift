//
//  ReviewView.swift
//  test-1221system
//
//  Created by Тимур Калимуллин on 05.02.2024.
//

import SwiftUI

struct ReviewView: View {
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Text("Отзывы")
                    .font(.title2.weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                Button {
                } label: {
                    Text("Все 152").bold()
                        .foregroundColor(.green)
                }
            }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(0..<5) {_ in
                        ReviewCellView()
                    }
                }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            }
            Button {
            } label: {
                Text("Оставить отзыв")
            }
            .frame(height: 35.0)
            .foregroundColor(.green)
            .frame(maxWidth: .infinity)
            .overlay(RoundedRectangle(cornerRadius: 26).stroke(.green, lineWidth: 2))
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 15, trailing: 20))
        }
    }
}

struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView()
    }
}
