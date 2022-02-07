//
//  ContentView.swift
//  Sportrack
//
//  Created by Adley Salabi on 01/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Hello, Sportrack!")
                .padding()


        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Profil {
    // User Info
    let firstName: String
    let lastName: String
    var email: String
    var passWord: String
    let dateOfBirth: Date
    var weight: Int
    var height: Int
    // Workout Info
    var workoutComing: [OneWorkout]
    var workoutPassed: [OneWorkout]
    // Tracking Info
    var nbrSeance: Int
    var intensiteMoy: Intensity
    var tempsPasse: Int
    var calBurn: Int
    // Type Workout
    var workoutTracker: [WorkoutType: Int] = [.musculation: 0, .cardio: 0, .crossTraining: 0, .gainage: 0, .stretching : 0]
//    var crossTraining: Int
//    var musculation: Int
//    var cardio: Int
//    var stretching: Int
//    var gainage: Int
    // Defi Info
    var defiComing: [OneDefi]
    var defiPassed: [OneDefi]
    var nbrSt: Int
}

// Element pour un workout
struct OneWorkout: Identifiable { // Button : Action -> Workout en particulier
    var id = UUID()
    // Renseigné
//    let workoutType: WorkoutType
    let workoutTitle: String
    var calories: Int = 0
    var time: Int = 0
    var workoutDate: Date // Format à définir
    var valeurSt: Int
    var nbrExoSeance: Int = 0
    var intensityMoyWorkout: Intensity = .unknow
    var workoutFinished: Bool = false
    var exercices: [OneExercice] = []
}

// Modal permettant de composer sa séance de sport
// Chaque exercice est selectionnable pour composer une séance à la suite
struct OneExercice: Identifiable {
    var id = UUID()
    var exoImg: String
    var titleExo: String
    var dureeExoSec : Int
    var repExo : Int
    var cal: Int
    let intensity: Intensity
    var exoType: WorkoutType
    var exoFinished: Bool
}

// Struct défi Reward d'un badge : Défi réalisé = Badge
struct OneDefi: Identifiable {
    var id = UUID()
    var imgDefi: String
    var titleDefi: String
    var descriptionDefi: String
    var valeurSt: Int
    var defiFinished: Bool = false
}

enum Intensity: Int{
    // .rawValue
    case unknow = 0
    case low = 1
    case medium = 2
    case hight = 3
}

enum WorkoutType: String {
    case musculation = "Musculation"
    case crossTraining = "Cross Trainin"
    case cardio = "Cardio"
    case gainage = "Gainage"
    case stretching = "Stretching"
}

// Création d'un utilisateur
var userJulie = Profil(firstName: "Julie", lastName: "Dupont", email: "julie.dupont@gmail.com", passWord: "xxxx", dateOfBirth: Date.now, weight: 65, height: 170, workoutComing: [], workoutPassed: [], nbrSeance: 0, intensiteMoy: .low, tempsPasse: 0, calBurn: 0, workoutTracker: [:], defiComing: [], defiPassed: [], nbrSt: 10 )


// Création d'un workout
var firstWorkout = OneWorkout(workoutTitle: "Sport début de semaine", workoutDate: Date.now, valeurSt: 30, exercices: [exoPompe, exoSquat, exoJumpingJack])

// Création d'un exercice
var exoPompe = OneExercice(exoImg: "pompe-img", titleExo: "Pompe", dureeExoSec: 30, repExo: 10, cal: 3, intensity: .low, exoType: .musculation, exoFinished: false)

var exoSquat = OneExercice(exoImg: "squat-img", titleExo: "Squat", dureeExoSec: 120, repExo: 50, cal: 35, intensity: .medium, exoType: .musculation, exoFinished: false)

var exoJumpingJack = OneExercice(exoImg: "jumping-jack-img", titleExo: "Jumping Jack", dureeExoSec: 100, repExo: 30, cal: 60, intensity: .hight, exoType: .cardio, exoFinished: true)

// Création d'un Defi
var firstDefi = OneDefi(imgDefi: "defi-un-unachieved", titleDefi: "First Seance", descriptionDefi: "Réalisez votre première séance de sport", valeurSt: 5)
