//
//  KopilkaViewModel.swift
//  Kopilka
//
//  Created by macbook on 07.01.2023.
//

import Foundation


class KopilkaViewModel: ObservableObject {
    
    @Published var targets: [KopilkaModel] = [] {
        didSet {
            saveTargets()
        }
    }
    
    init() {
        getTargets()
    }
    
    
    let targetsKey: String = "targets_list"
    
    
    func getTargets() {
        guard
            let data = UserDefaults.standard.data(forKey: targetsKey),
            let savedTargets = try? JSONDecoder().decode([KopilkaModel].self, from: data)
        else { return }
        
        self.targets = savedTargets
    }
    
    func deleteTargets(indexSet: IndexSet) {
        targets.remove(atOffsets: indexSet)
    }
    
    func moveTargets(from: IndexSet, to: Int) {
        targets.move(fromOffsets: from, toOffset: to)
    }
    
    func addTargets(title: String) {
        let uuid = NSUUID()
        let newItem = KopilkaModel(id: uuid as UUID, title: title)
        targets.append(newItem)
    }
    
    
    
    func updateTargets(id: UUID, title: String) {
        if let target = targets.first(where: { $0.id == id}) {
            let index = targets.firstIndex(of: target)
            targets[index!].title = title
        }
        
    }
    
    func saveTargets() {
        if let encodedData = try? JSONEncoder().encode(targets) {
            UserDefaults.standard.set(encodedData, forKey: targetsKey)
        }
    }
}

