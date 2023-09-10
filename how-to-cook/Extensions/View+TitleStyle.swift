//
//  View+TitleStyle.swift
//  how-to-cook
//
//  Created by ryp on 2023/8/29.
//

import SwiftUI

extension View {
    func titleStyle() -> some View {
        self.modifier(TitleText())
    }
}
