//
//  WorkoutSelectType.swift
//  Sportrack
//
//  Created by Adley Salabi on 03/02/2022.
//

import SwiftUI

struct WorkoutSelectType: View {
    @State private var showModal = false
    
    var body: some View {
        ZStack { // Empiler des éléments sur une vue
            VStack {
//                navigationBarTitle("Select a Type Of Workout")
                
                HStack {
                    Text("Select a Type Of Workout")
                        .font(Font.title.weight(.bold))
                        .padding()
                } // HStack
                VStack {
                    HStack {
                        Spacer()
                        // Mettre ce button en subview pour chaque éléments
                        Button(action: {
                            showModal = true
                        }, label: {
                            VStack {
                                Image(systemName: "sportscourt")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50)
                                    .foregroundColor(.blue)
                                Text("Musculation")
                                    .font(Font.body.weight(.medium))
                                    .padding()
                                    .foregroundColor(.black)
                            }
                            .frame(width: 140, height: 140)
                            .cornerRadius(5)
                            .background(Color.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.gray, lineWidth: 2)
                            )
                        })
                        .sheet(isPresented: $showModal, content: {
                                ModalSheet(hideModal: $showModal)
                        })
                        Spacer()
                    } // HStack
                } // VStack
                
                Spacer()
            } // VStack
        } // ZStack
    }
}



// Struct qui va composer les éléments dans la liste
struct ExoRecap: View {
    // Variable du type de donnée qui va être utilisé dans la liste
    var oneExo: OneExercice
    
    @Binding var selectedItem: Set<UUID>
    
    var isSelected: Bool {
        selectedItem.contains(oneExo.id)
    }
    
    var body: some View {
        HStack {
            Image(oneExo.exoImg)
                .resizable()
                .frame(width: 40, height: 40)
            Text(oneExo.titleExo)
            Spacer()
            if self.isSelected {
                Image(systemName: "checkmark")
                    .foregroundColor(.blue)
            }
        }
        .onTapGesture {
            if self.isSelected {
                self.selectedItem.remove(self.oneExo.id)
            } else {
                self.selectedItem.insert(self.oneExo.id)
            }
        }
    }
}

// Déclaration de la variable des données utilisés
var allExercicesSport: [OneExercice] = [ exoPompe, exoSquat, exoJumpingJack ]

// Modal qui va nous permettre d'afficher les éléments d'une séance de sport
struct ModalSheet : View {
    @Binding var hideModal: Bool
    
    @State private var selection = Set<UUID>()

    var body: some View {
        // Création d'une navigation view
        NavigationView {
            /* Initialisation de la liste avec les paramètres :
            allExercicesSport : qui est le tableau qui contient tous les exercices de sport
             selection : variable dans la struct de la liste qui attend les données
             $selection : Variable qui est utilisé pour stocker les ID des exercices ajotué
             */
            List(allExercicesSport,selection: $selection){exo in
                ExoRecap(oneExo: exo, selectedItem: self.$selection)
            }
            .navigationTitle("Select Exercices")
            .navigationBarTitle("Exercice Selected : \(selection.count)")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        hideModal.toggle()
                    }, label: {
                        Text("GoBack")
                    })
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Navigation link vers la page suivante
                        hideModal.toggle()
                    }, label: {
                        Text("See Workout")
                    })
                }
            }
        }
    }
}

struct WorkoutSelectType_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutSelectType()
    }
}


