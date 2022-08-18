//
//  listRowView.swift
//  todo
//
//  Created by Muna Tayeb on 16/08/2022.
//

import SwiftUI

struct ListRowView: View {
    
    let item: itemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(8)
    }
}

struct listRowView_Previews: PreviewProvider {
    
    static var item1: itemModel = itemModel(title: "this is the first item", isCompleted: false)
    
    static var previews: some View {
        ListRowView(item: item1)
    }
}
