//
//  GlobalState.swift
//  todo
//
//  Created by erenkulaksiz on 14.12.2024.
//

import Foundation

class GlobalState: ObservableObject {
    @Published var todos: [String] = ["Get a life"]
}
