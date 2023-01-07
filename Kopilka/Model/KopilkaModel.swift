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
    
    init(id: UUID, title: String) {
        self.id = id
        self.title = title
    }
    
    func updateCompletion() -> KopilkaModel {
        return KopilkaModel(id: id, title: title)
    }
    
    
}
