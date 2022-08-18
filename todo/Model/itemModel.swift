//
//  itemModel.swift
//  todo
//
//  Created by Muna Tayeb on 16/08/2022.
//

import Foundation

// immutable struct

struct itemModel: Identifiable, Codable{
    let id: String
    let title : String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool){
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> itemModel{
        return itemModel(id: self.id, title: self.title, isCompleted: !self.isCompleted)
    }
}
