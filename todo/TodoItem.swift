//
//  TodoItem.swift
//  todo
//
//  Created by erenkulaksiz on 14.12.2024.
//

import SwiftUI

struct TodoItem: View {
    var todoText: String
    
    var body: some View {
        Text(todoText)
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue.opacity(0.2))
            )
    }
}

#Preview {
    TodoItem(todoText: "Get a life")
}
