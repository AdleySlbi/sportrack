//
//  AddSchedule.swift
//  Sportrack
//
//  Created by Adley Salabi on 07/02/2022.
//

import SwiftUI

struct AddSchedule: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                HStack {
                    Image(systemName: "calendar")
                    Text("27 May 2021 09:00") // Récupérer les infos du date picker où de la séance directement
                    Spacer()
                } // HStack
                .padding()
                DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                    .padding()
                // Tcheck how to use a DatePicker
                Spacer()
                Button(action: {}, label: {
                    Text("Add to agenda")
                        .foregroundColor(.white)
                        .frame(width: 320)
                        .font(Font.body.weight(.bold))
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(99)
                })
            } // VStack
            
            .navigationTitle("Add Schedule")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Image(systemName: "xmark")
                }
            }
        } // NavigationView
    }
}

struct AddSchedule_Previews: PreviewProvider {
    static var previews: some View {
        AddSchedule()
    }
}
