//
//  HomeView.swift
//  FitnessApp
//
//  Created by Zouz Bekdache on 1/1/2025.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 300
    @State var active: Int = 45
    @State var steps: Int = 8000
    
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
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    Text("Welcome to FitFam")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    
                    Text("Daily progress")
                        .font(.headline)
                        .padding(.bottom)
                    
                    HStack {
                        
                        Spacer()
                        
                        VStack {
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Calories")
                                    .font(.callout)
                                    .foregroundColor(.red)
                                Text("200 kcal")
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Active")
                                    .font(.callout)
                                    .foregroundColor(.green)
                                Text("45 mins")
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Steps")
                                    .font(.callout)
                                    .foregroundColor(.blue)
                                Text("8000")
                            }
                        }
                        
                        Spacer()
                        
                        ZStack {
                            ProgressCircleView(progress: $calories, goal: 600, color: .red)
                            
                            ProgressCircleView(progress: $active, goal: 60, color: .green)
                                .padding(.all, 20)
                            
                            ProgressCircleView(progress: $steps, goal: 10000, color: .blue)
                                .padding(.all, 40)
                        }
                        
                        .padding(.horizontal)
                        
                        Spacer()
                    }
                    .padding()
                    
                    HStack {
                        Text("Fitness Activity")
                            .font(.title2)
                        
                        Spacer()
                        
                        Button {
                            print("show more")
                        } label: {
                            Text("Show more")
                                .padding(.all, 10)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                    }
                    
                    .padding(.horizontal)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count:2)) {
                        
                        ForEach(mockActivities, id: \.id) {activity in
                            ActivityCard(activity: activity)}
                    }
                }
                
                .padding(.horizontal)
                
                HStack {
                    Text("Recent Workouts")
                        .font(.title2)
                    
                    Spacer()
                    
                    NavigationLink {
                        EmptyView()
                    } label: {
                        Text("Show more")
                            .padding(.all, 10)
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(20)
                    }
                }
                
                .padding(.horizontal)
                .padding(.top)
                
                LazyVStack {
                    ForEach(mockWorkouts, id: \.id) { workout in
                        WorkoutCard(workout: workout)}
                }
            }
        }
    }
}

struct HomeView_Preview: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
