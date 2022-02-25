//
//  ContentView.swift
//  AlertUI
//
//  Created by Iurie Guzun on 2022-02-25.
//

import SwiftUI

// 1
struct ErrorInfo: Identifiable {

    var id: Int
    let title: String
    let description: String
}

struct ContentView: View {
    // 2
    @State private var error: ErrorInfo?


    var body: some View {
        VStack {
            // 3
            Text(error?.description ?? "nil")

            // 4
            Button("Error 1") {
                error = ErrorInfo(id: 1, title: "Title 1", description: "Message 1")

            }
            Button("Error 2") {
                error = ErrorInfo(id: 2, title: "Title 2", description: "Message 2")

            }
            Button("Error 3") {
                error = ErrorInfo(id: 3, title: "Title 3", description: "Message 3")

            }
            Spacer()
        }
        .alert(item: $error, content: { error in // 5

            Alert(
                title: Text(error.title),
                message: Text(error.description)
            )
        })
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
