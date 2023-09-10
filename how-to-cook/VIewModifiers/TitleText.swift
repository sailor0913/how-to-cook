//
//  TitleText.swift
//  how-to-cook
//
//  Created by ryp on 2023/8/29.
//

import SwiftUI

struct TitleText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .padding(.vertical, 8)
            .frame(maxWidth: .infinity) // 使标题占据整个宽度
            .background(Color.accentColor.opacity(0.1))
            .cornerRadius(10) // 添加圆角
            .padding(.horizontal)
    }
}
