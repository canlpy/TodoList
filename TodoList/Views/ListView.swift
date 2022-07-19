//
//  ListView.swift
//  TodoList
//
//  Created by Can on 19.07.2022.
//

import SwiftUI

struct ListView: View {
    
    @State var items = [
    "This is the first",
    "And the second",
    "Third"
    ]
    
    
    var body: some View {
        List{
            ForEach(items, id: \ .self ) { item in
                ListRowView(title: item)
            }
           
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
        
    }
}

