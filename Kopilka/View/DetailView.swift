//
//  DetailView.swift
//  Kopilka
//
//  Created by macbook on 07.01.2023.
//

import SwiftUI

struct DetailView: View {
    
    @State var target: KopilkaModel
    @EnvironmentObject var kopilkaViewModel: KopilkaViewModel
    @State var newTitle: String = ""
    @State var newCost: String = ""
    
    var body: some View {
        VStack{
            TextField("", text: $target.title)
                .multilineTextAlignment(.leading)
                .textSelection(.enabled)
                .foregroundColor(.red)
                .lineLimit(1)
                .font(.headline)
                .padding(.top, 15)
                .padding(.horizontal)
                .background(Color("backgroundColor"))
            
            TextField("", text: $target.cost)
                .multilineTextAlignment(.leading)
                .textSelection(.enabled)
                .foregroundColor(.red)
                .lineLimit(1)
                .font(.headline)
                .padding(.top, 15)
                .padding(.horizontal)
                .background(Color("backgroundColor"))
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(target: KopilkaModel(id: UUID(), title: "biba boba", cost: "750 000"))
        }
    }
}
