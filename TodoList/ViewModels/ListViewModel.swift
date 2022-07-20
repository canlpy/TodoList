//
//  ListViewModel.swift
//  TodoList
//
//  Created by Can on 20.07.2022.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] =  []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "First title", isCompleted: false),
            ItemModel(title: "Second title", isCompleted: false),
            ItemModel(title: "Third", isCompleted: true)
        ]
        items.append(contentsOf: newItems)
    }
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem )
    }
    
}
