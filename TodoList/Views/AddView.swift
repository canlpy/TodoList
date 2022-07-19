 //
//  AddView.swift
//  TodoList
//
//  Created by Can on 19.07.2022.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""
    
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type smth here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(hue: 1.0, saturation: 0.03, brightness: 0.89))
                .cornerRadius(10)
                
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .foregroundColor(Color.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10 )
                        
                
                    
                })
            }
            .padding(14)
        }
        .navigationTitle("Add an Item")
}
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        AddView()
        }
        
    }
}
