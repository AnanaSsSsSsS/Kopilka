//
//  EditView.swift
//  Kopilka
//
//  Created by macbook on 07.01.2023.
//

import SwiftUI

struct EditView: View {
    
    @EnvironmentObject var kopilkaViewModel: KopilkaViewModel
    
    var body: some View {
        
        List {
            ForEach(kopilkaViewModel.targets) { eachTarget in
  
                KopilkaViewItem2(target: eachTarget)

            }
            .onMove(perform: kopilkaViewModel.moveTargets)
            .onDelete(perform: kopilkaViewModel.deleteTargets)
        }
        .listStyle(PlainListStyle())
        
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView()
            .environmentObject(KopilkaViewModel())
    }
}


struct KopilkaViewItem2 : View {
    
    let target: KopilkaModel
    
    var body: some View {
        
        HStack {
            Button {
                
            } label: {
                Image(systemName: "chevron.right")
            }
            .frame(width: 40, height: 40)

            
            Text(target.title)
                .lineLimit(1)
                .foregroundColor(.red)
                .padding(.leading, 9)
            
            Spacer()
            
            Image(systemName: "list.dash")
        }
        
    }
    
}
