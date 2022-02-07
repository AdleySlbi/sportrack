//
//  SeanceView.swift
//  Sportrack
//
//  Created by Adley Salabi on 07/02/2022.
//

import SwiftUI

struct SeanceView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Musculation") // Récupérer le type de la séance
                        .font(Font.title.weight(.bold))
                    Spacer() // Espacer les éléments
                    Text("Recompense") // Récupérer le nombre de récompense
                        .font(Font.title3.weight(.medium))
                } // HStack
                .padding()
                HStack {
                    Text("11 Exercices | 32 minutes | 300Kcal | Intensité Level : 3") // Récupérer tous les éléments dynamique
                        .font(Font.subheadline.weight(.light))
                        .foregroundColor(.gray)
                    Spacer()
                } // HStack
                .padding()
                Button(action: {}, label: {
                    Image(systemName: "calendar")
                    Text("Schedule Workout")
                    Spacer()
                    Text("5/27, 09:00 AM")
                    Image(systemName: "arrow.forward")
                })
                    .frame(width: 320)
                    .foregroundColor(.gray)
                    .padding()
                    .background(Color(red: 157/255, green: 206/255, blue: 255/255))
                    .cornerRadius(20) // Button End Style
                HStack{
                    Text("Exercices")
                        .font(Font.title2.weight(.semibold))
                    Spacer()
                    Text("Edit") // Ouvrir la modal qui permet de modifier les éléments du workout & Modifier les valeurs
                        .font(Font.subheadline.weight(.light))
                        .foregroundColor(.gray)
                } // HStack
                .padding()
                VStack{
                    // Créer une liste de tous les éléments de la séance de sport
                    // Image / Exercice / Temps ou rep
                } // VStack
                Spacer()
                Button(action: {}, label: {
                    Text("Start Workout")
                        .foregroundColor(.white)
                        .frame(width: 320)
                        .font(Font.body.weight(.bold))
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(99)
                })
            } // VStack
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button(action: {}, label: {
                        Text("Enregistrer")
                    })
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {}, label: {
                        Text("Enregistrer")
                    })
                }
            }
        } // Navigation View
    }
}

struct SeanceView_Previews: PreviewProvider {
    static var previews: some View {
        SeanceView()
    }
}
