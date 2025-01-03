//
//  HomeView.swift
//  FitnessApp
//
//  Created by Zouz Bekdache on 1/1/2025.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()

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
                        
                        //Spacer()
                        
                        VStack(alignment: .leading) {
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Calories")
                                    .font(.callout)
                                    .foregroundColor(.red)
                                Text("\(viewModel.calories)")
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Active")
                                    .font(.callout)
                                    .foregroundColor(.green)
                                Text("\(viewModel.active)")
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Steps")
                                    .font(.callout)
                                    .foregroundColor(.blue)
                                Text("\(viewModel.steps)")
                            }
                        }
                        
                        //Spacer()
                        
                        ZStack {
                            ProgressCircleView(progress: $viewModel.calories, goal: 600, color: .red)
                            
                            ProgressCircleView(progress: $viewModel.active, goal: 60, color: .green)
                                .padding(.all, 20)
                            
                            ProgressCircleView(progress: $viewModel.steps, goal: 10000, color: .blue)
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
                        
                        ForEach(viewModel.mockActivities, id: \.id) {activity in
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
                    ForEach(viewModel.mockWorkouts, id: \.id) { workout in
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
