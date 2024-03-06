//
//  ItemSpecificationView.swift
//  test-1221system
//
//  Created by Тимур Калимуллин on 05.02.2024.
//

import SwiftUI

struct ItemSpecificationView: View {
    let itemSpecification = ["Производство": "Россия, Краснодарский край",
                             "Энергетическая\nценность, ккал/100 г": "25 ккал, 150 кДж",
                             "Жиры/100 г": "0,1 г",
                             "Белки/100 г": "1,3 г",
                             "Углеводы/100 г": "3,3 г"]
    let keyItemSpecification = ["Производство", "Энергетическая\nценность, ккал/100 г", "Жиры/100 г", "Белки/100 г", "Углеводы/100 г"]
    var body: some View {
        VStack{
            ForEach(keyItemSpecification, id: \.self) { key in
                HStack(alignment: .top) {
                    Text(key).font(.system(size: 14))
                    Text(String(Const.placeHolder))
                        .frame(maxWidth: .infinity)
                        .lineLimit(1)
                        .foregroundColor(.white)
                        //.strikethrough(pattern: .dot, color: .black)
                    Text(itemSpecification[key] ?? "").font(.system(size: 14))
                }
            }
        }
    }
}

struct ItemSpecificationView_Previews: PreviewProvider {
    static var previews: some View {
        ItemSpecificationView()
    }
}

extension ItemSpecificationView{
    struct Const {
        static let placeHolder = "placeholderplaceholderplaceholderplaceholderplaceholderplaceholderplaceholderplaceholderplaceholderplaceholderplaceholderplaceholderplaceholderplaceholderplaceholderplaceholderplaceholderplaceholderplaceholder"
    }
}
