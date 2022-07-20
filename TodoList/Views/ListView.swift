//
//  ListView.swift
//  TodoList
//
//  Created by Can on 19.07.2022.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    
    
    
    var body: some View {
        List{
            ForEach(listViewModel.items) { item in
               
                ListRowView(item: item)
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
           
        }
        .listStyle(PlainListStyle() )
        .navigationTitle("To Do List")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        ListView()
        }
        .environmentObject(ListViewModel() )
        
    }
}

