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
    
    var body: some View {
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
                
            }
        }
            
    }
}

struct HomeView_Preview: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
