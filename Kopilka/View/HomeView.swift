//
//  HomeView.swift
//  Kopilka
//
//  Created by macbook on 07.01.2023.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var kopilkaViewModel: KopilkaViewModel
    
    var body: some View {
        
        VStack{
            
            ScrollView(.horizontal) {
                HStack{
                    RoundedBlock
                    
                    RoundedBlock2
                    
                    RoundedBlock3
                }
                .padding()
            }
            
            
            List {
                ForEach(kopilkaViewModel.targets) { eachTarget in
                    
                    NavigationLink(destination: DetailView(target: eachTarget)
                                       , label: {
                            KopilkaViewItem(target: eachTarget)
                        }
                        )
                }
            }
            .listStyle(PlainListStyle())
            
            
        }
        
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(KopilkaViewModel())
    }
}


struct KopilkaViewItem : View {
    
    let target: KopilkaModel
    
    var body: some View {
        
        Text(target.title)
            .lineLimit(1)
            .foregroundColor(.red)
            .padding(.leading, 9)
    }
    
}

extension HomeView {
    
    private var RoundedBlock: some View {
        VStack {
            Text("Количество целей")
                .foregroundColor(.white)
                .padding()
            Text("3")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(Color.black)
        .cornerRadius(25)
    }
    
    private var RoundedBlock2: some View {
        VStack {
            Text("Общая сумма")
                .foregroundColor(.white)
                .padding()
            Text("780 000")
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(Color.black)
        .cornerRadius(25)
    }
    
    private var RoundedBlock3: some View {
        VStack {
            Text("Что-то еще")
                .foregroundColor(.white)
                .padding()
            Text("000 000")
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(Color.black)
        .cornerRadius(25)
    }
    
}
