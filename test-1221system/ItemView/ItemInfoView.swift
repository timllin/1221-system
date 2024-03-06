//
//  ItemInfoView.swift
//  test-1221system
//
//  Created by Тимур Калимуллин on 05.02.2024.
//

import SwiftUI

struct ItemInfoView: View {
    let title: String = "Добавка ''Липа''\nк чаю 200 г"
    let description: String = "Флавноиды липового цвета обладают противосполительным действием, способствуют укрпелнию стенки сосудов."

    var body: some View {
        ScrollView() {
            VStack(spacing: 30) {
                HStack {
                    Text("Цена по карте")
                        .foregroundColor(.white)
                        .frame(width: 90, height: 25)
                        .font(.system(size: 12))
                        .background(RoundedRectangle(cornerRadius: 5 ).fill(Color.green))
                    Spacer()
                }
                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 250)

                HStack(alignment: .top) {
                    Label {
                        Text("4.1")
                            .bold()
                    } icon: {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                    Divider()
                    Text("19 отзывов")
                        .foregroundColor(.gray)
                    Spacer()
                    RedShapeView().frame(width: 20, height: 20, alignment: .top).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))

                }

                Text(title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.largeTitle.weight(.bold))


                Label {
                    Text("Испания, Риоха")
                        .font(.callout)
                } icon: {
                    Image("SpainFlag")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 55.0, height: 35.0)
                        .clipShape(Circle())
                }.frame(maxWidth: .infinity, alignment: .leading) .padding(EdgeInsets(top: 0, leading: -10, bottom: 0, trailing: -10))

                VStack(spacing: 12)  {
                    Text("Описание")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.body.weight(.bold))
                    Text(description)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }

                VStack(spacing: 12) {
                    Text("Основные характеристики")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.body.weight(.bold))
                    ItemSpecificationView()
                }

                Button {
                } label: {
                    Text("Все характеристики")
                        .bold()
                        .foregroundColor(.green)
                }.frame(maxWidth: .infinity, alignment: .leading)

            }.padding(EdgeInsets(top: 5, leading: 20, bottom: 20, trailing: 20))
            ReviewView()
        }
    }
}

struct ItemInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ItemInfoView()
    }
}
