//
//  AddToCartView.swift
//  test-1221system
//
//  Created by Тимур Калимуллин on 05.02.2024.
//

import SwiftUI

struct AddToCartView: View {
    let variants: [String] = ["Шт", "Кг"]
    @State private var selectedVariant = "Шт"

    var body: some View {
        VStack(spacing: 30) {
            Picker("variants", selection: $selectedVariant) {
                ForEach(variants, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.segmented)
            HStack {
                VStack(alignment: .leading) {
                    HStack(spacing: 0) {
                        Text("55.9").font(.largeTitle).bold()
                        VStack {
                            Text("₽").font(.system(size: 13, weight: .bold))
                            Text("кг").offset(x: 12, y: -5).font(.system(size: 13, weight: .bold))
                        }.background(Text("|").rotationEffect(Angle(radians: .pi/4)).offset(x: 5, y: -3))
                    }
                    Text("199.9").strikethrough().foregroundColor(Color.gray)
                }
                Spacer()
                HStack {
                    Button {
                    } label: {
                        Image(systemName: "minus")
                    }.padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 0))
                    Spacer()
                    VStack {
                        Text("1 шт").bold()
                        Text("120,0 ₽").font(.caption)
                    }
                    Spacer()
                    Button {
                    } label: {
                        Image(systemName: "plus")
                    }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 15))
                }
                .frame(width: 150, height: 45, alignment: .leading)
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(35)
            }
        }
        .padding(EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 20))
        .background(
            Rectangle()
                .fill(Color.white)
                .shadow(color: Color.secondary, radius: 1, x: 0, y: -1))
    }
}

struct AddToCartView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartView()
    }
}
