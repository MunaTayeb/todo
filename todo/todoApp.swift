//
//  todoApp.swift
//  todo
//
//  Created by Muna Tayeb on 16/08/2022.
//

import SwiftUI

/*
 
 MVVM Architecture
 Model - Data Point
 View - UI of the APP
 ViewModel - Manages Models for views

 */

@main
struct todoApp: App {
   
    @StateObject var listViewModel: ListViewModel = ListViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
