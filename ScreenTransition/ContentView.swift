//
//  ContentView.swift
//  ScreenTransition
//
//  Created by silicagel on 2024/11/30.
//

import SwiftUI

struct ContentView: View {
    @State var isShowSecondView: Bool = false

    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    SecondView()
                } label: {
                    Text("SecondViewへナビ遷移")
                }

                Button("SecondViewへモーダル遷移") {
                    isShowSecondView = true
                }
                .padding()
                .sheet(isPresented: $isShowSecondView) {
                    SecondView()
                        .presentationDetents([.large])
                }
            }
            .padding()
            .navigationTitle("画面1")
        }
    }
}

#Preview {
    ContentView()
}
