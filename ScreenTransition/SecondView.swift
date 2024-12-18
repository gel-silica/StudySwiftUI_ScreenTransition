//
//  SecondView.swift
//  ScreenTransition
//
//  Created by silicagel on 2024/11/30.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            Text("SecondView")
        }
    }
}

#Preview {
    SecondView()
}
