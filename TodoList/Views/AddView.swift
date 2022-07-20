 //
//  AddView.swift
//  TodoList
//
//  Created by Can on 19.07.2022.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type smth here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(hue: 1.0, saturation: 0.03, brightness: 0.89))
                .cornerRadius(10)
                
                Button(action: saveButtonPressed, label: {
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
    func saveButtonPressed() {
        if textIsApproriate() {listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
            
        }
        
    }
    func textIsApproriate() -> Bool {
        
        if textFieldText.count < 3 {
             return false
        }
        return true
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        AddView()
        }
        .environmentObject(ListViewModel())
        
    }
}
