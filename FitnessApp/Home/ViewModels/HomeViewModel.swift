//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by Zouz Bekdache on 3/1/2025.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    var calories: Int = 123
    var active: Int = 52
    var steps: Int = 9999
    
    var mockActivities = [
        Activity(id: 0, title: "Today's Steps", subtitle: "Goal: 10,000", image: "figure.walk", tintColor: .green, amount: "8000"),
        Activity(id: 1, title: "Today's Steps", subtitle: "Goal: 10,000", image: "figure.walk", tintColor: .red, amount: "8000"),
        Activity(id: 2, title: "Today's Steps", subtitle: "Goal: 10,000", image: "figure.walk", tintColor: .blue, amount: "8000"),
        Activity(id: 3, title: "Today's Steps", subtitle: "Goal: 10,000", image: "figure.walk", tintColor: .purple, amount: "8000")
    ]
    
    var mockWorkouts = [
        Workout(id: 0, title: "Running", image: "figure.run", tintColor: .cyan, duration: "43 Mins", date: "Aug 1st", Calories: "431kcal"),
        Workout(id: 1, title: "Swimming", image: "figure.open.water.swim", tintColor: .green, duration: "43 Mins", date: "Aug 1st", Calories: "431kcal"),
        Workout(id: 2, title: "Hiking", image: "figure.walk", tintColor: .blue, duration: "43 Mins", date: "Aug 1st", Calories: "431kcal"),
        Workout(id: 3, title: "Cycling", image: "figure.outdoor.cycle", tintColor: .red, duration: "43 Mins", date: "Aug 1st", Calories: "431kcal")
        
    ]
}
