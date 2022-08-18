//
//  AddView.swift
//  todo
//
//  Created by Muna Tayeb on 16/08/2022.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false

    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type Something Here ...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                .cornerRadius(10)
            }
            
            Button(action: save,
                   label: {
                Text("SAVE!")
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(10)
            })

            
        }.padding(14)
        .navigationTitle("Add Items! ✏️")
        .alert(isPresented: $showAlert, content: getAlert )
    }
    
    func save(){
        if isTextValid(){
        listViewModel.addItem(title: textFieldText)
        presentationMode.wrappedValue.dismiss()
        }
        
    }
    
    func isTextValid() -> Bool{
        if textFieldText.count < 3{
            alertTitle = "Your new Todo Item must be at least 3 characters long!! 😰 "
            showAlert.toggle()
            return false
        }
        return true
    }
    
    
    func getAlert() -> Alert{
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
        .environmentObject(ListViewModel())
        
    }
}
