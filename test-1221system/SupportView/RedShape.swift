//
//  RedShape.swift
//  test-1221system
//
//  Created by Тимур Калимуллин on 05.02.2024.
//

import SwiftUI

struct RedShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.minX, y: rect.minY))
            path.addQuadCurve(to: CGPoint(x: rect.maxX-30/6, y: rect.minY-7), control: CGPoint(x: rect.midX-20/6, y: rect.minY+40/6))
            path.addLine(to: CGPoint(x: rect.maxX+3, y: rect.midY-10/6))
            path.addQuadCurve(to: CGPoint(x: rect.minX, y: rect.midY-10/6), control: CGPoint(x: rect.midX-20/6, y: rect.midY+25/6))

        }
    }
}


struct RedShapeView: View {
    var body: some View {
        ZStack(alignment: .top) {
            RedShape().foregroundColor(.red).frame(width:50, height: 50)
            Text("-5%").foregroundColor(.white)
        }
    }
}

struct RedShapeView_Previews: PreviewProvider {
    static var previews: some View {
        RedShapeView()
    }
}

