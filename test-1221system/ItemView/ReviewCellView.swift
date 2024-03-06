//
//  ReviewCellView.swift
//  test-1221system
//
//  Created by Тимур Калимуллин on 05.02.2024.
//

import SwiftUI

struct ReviewCellView: View {
    let name: String = "Александр В."
    let date: String = "7 мая 2021"
    let stars: Int = 4
    let maxStars: Int = 5
    let description: String = "Хорошая добавка, мне очень понравилась! Хочу чтобы все добавки были такими!"

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(name).bold()
            Text(date).font(.callout).foregroundColor(.gray)
            HStack {
                ForEach(0..<stars) {_ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
                ForEach(stars..<maxStars) {_ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.gray)
                }
            }
            Text(description).font(.callout).lineLimit(3)
        }.frame(width: 275, height: 155)
            .cornerRadius(15)
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.white)
                    .shadow(color: Color.secondary, radius: 1, x: 0, y: 0))
            .padding(2)
    }
}

struct ReviewCellView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewCellView()
    }
}
