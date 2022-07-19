//
//  ItemModel.swift
//  TodoList
//
//  Created by Can on 19.07.2022.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
