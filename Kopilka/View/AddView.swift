//
//  AddView.swift
//  Kopilka
//
//  Created by macbook on 07.01.2023.
//

import SwiftUI

struct AddView: View {
    
    @State var newTitle: String = ""
    @EnvironmentObject var kopilkaViewModel: KopilkaViewModel
    @Environment(\.presentationMode) var presentedMode
    
    var body: some View {
        VStack {
            TextField("Название...", text: $newTitle)
                .frame(height: 30)
                .multilineTextAlignment(.leading)
                .foregroundColor(.red)
                .lineLimit(1)
                .font(.headline)
                .padding(.top, 15)
                .padding(.horizontal)
            
            Button(action: {
                saveButtonPressed()
            }) {
                Image(systemName: "checkmark")
                    .foregroundColor(.red)
                    .frame(width: 100, height: 100)
                    .background(Color.black)
                    .cornerRadius(25)
            }
        }
        
    }
    
    func saveButtonPressed() {
        kopilkaViewModel.addTargets(title: newTitle)
        presentedMode.wrappedValue.dismiss()
    }
    
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
            .environmentObject(KopilkaViewModel())
    }
}
