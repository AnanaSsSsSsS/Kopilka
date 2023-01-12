//
//  KopilkaModel.swift
//  Kopilka
//
//  Created by macbook on 07.01.2023.
//



import Foundation

struct KopilkaModel: Identifiable, Codable, Equatable {
    
    var id = UUID()
    var title: String
    var cost: String
    
    init(id: UUID, title: String, cost: String) {
        self.id = id
        self.title = title
        self.cost = cost
    }
    
    func updateCompletion() -> KopilkaModel {
        return KopilkaModel(id: id, title: title, cost: cost)
    }
    
    
}
