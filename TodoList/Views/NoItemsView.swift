 //
//  NoItemsView.swift
//  TodoList
//
//  Created by Can on 21.07.2022.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
    var body: some View {
        ScrollView {
            
            VStack(spacing: 10 ) {
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you a productive person?I think you should click the add button and add a bunch of items to your to do list!")
                NavigationLink(destination: AddView(), label: {
                    Text("Add something")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? Color.red : Color.accentColor )
                        .cornerRadius(10)
                    
                })
                    .padding(.horizontal, animate ? 30 : 50)
                    .scaleEffect(animate ? 1.1 : 1.0)
                
                   
            }
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    func addAnimation() {
        guard !animate else {return}
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
            Animation
                .easeInOut(duration: 2.0)
                .repeatForever()
            
            
            
            
            )  {
                animate.toggle()
            }
        }
        
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
         
            NoItemsView()
                .navigationTitle("Title ")
        }
        
        
    }
}
