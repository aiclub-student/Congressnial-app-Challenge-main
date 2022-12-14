//
//  Aquire points view.swift
//  Congressnial app Challenge
//
//  Created by Kavita Sahai  on 10/9/22.
//


import SwiftUI

struct GoodDeedView: View {
    
    @AppStorage("pointsCount") var pointCount=0
    
    var deedNames = ["GOAL 1: No Poverty","GOAL 2: Zero Hunger", "GOAL 3: Good Health and Well-being", "GOAL 4: Quality Education", "GOAL 5: Gender Equality","GOAL 6: Clean Water and Sanitation","GOAL 7: Affordable and Clean Energy","GOAL 8: Decent Work and Economic Growth","GOAL 9: Industry, Innovation and Infrastructure","GOAL 10: Reduced Inequality", "GOAL 11: Sustainable Cities and Communities","GOAL 12: Responsible Consumption and Production","GOAL 13: Climate Action", "GOAL 14: Life Below Water","GOAL 15: Life on Land", "GOAL 16: Peace and Justice Strong Institutions","GOAL 17: Partnerships to achieve the Goal"
    ]
    var deedImages = ["No Poverty","Zero Hunger","Good Health and Well-being","Quality Education","Gender Equality","Clean Water and Sanitation","Affordable and Clean Energy","Decent Work and Economic Growth","Industry, Innovation and Infrastructure","Reduced Inequality","Sustainable Cities and Communities","Responsible Consumption and Production","Climate Action","Life Below Water","Life on Land","Peace and Justice Strong Institutions","Partnerships to achieve the Goal"]
    
    var deedDescriptions = ["","","","","","","","","","","","","","","","","","","","","","","","",""]
    
        static var deedActivities = [ ["Donated to sustainable development efforts","Donated old clothes to those in need","Participated in car sharing"
                                       //,"4 Get involved in your local association that helps homeless and people living in poverty","5 Participate in car sharing.","6 Support affordable public transportation.","7 Support better climate refugee policy and treatment.","8 Donate to organizations promoting the rights of Indigenous people whose livelihoods are disproportionately affected by climate change.","9 Encourage subsistence models for food security.”,“10 Learn about the intersection between energy,poverty,and the climate."
                                      ],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
    static var deedPoints = [ "Donated to sustainable development efforts":15,"Donated old clothes to those in need":15,"Participated in car sharing":20,"1 Donate to sustainable development projects":15, "2 Donate old clothes or household items to those in need.":15,"3 Donate to organizations that support climate migrants.":20,"Activity 2A":5, "Activity2B":10,"Activity 2C":6,"Activity 3A":5, "Activity3B":10,"Activity 3C":9,"Activity 4A":5, "Activity4B":10,"Activity 4C":12,"Activity 5A":5, "Activity5B":10,"Activity 5C":15,"Activity 6A":5, "Activity6B":10,"Activity 6C":18,"Activity 7A":5, "Activity7B":10,"Activity 7C":21,"Activity 8A":5, "Activity8B":10,"Activity 8C":24,"Activity 9A":5, "Activity9B":10,"Activity 9C":27,"Activity 10A":5, "Activity10B":10,"Activity 10C":30,"Activity 11A":5, "Activity11B":10,"Activity 11C":3,"Activity 12A":5, "Activity12B":10,"Activity 12C":6,"Activity 13A":5, "Activity13B":10,"Activity 13C":9,"Activity 14A":5, "Activity14B":10,"Activity 14C":12,"Activity 15A":5, "Activity15B":10,"Activity 15C":15,"Activity 16A":5, "Activity16B":10,"Activity 16C":18,"Activity 17A":5, "Activity17B":10,"Activity 17C":21]
    /*
     Activity names:
     No Poverty:
     ACTION
     1
     Donate to sustainable development projects.
     ACTION
     2
     Donate old clothes or household items to those in need.
     ACTION
     3
     Donate to organizations that support climate migrants.
     ACTION
     4
     Get involved in your local association that helps homeless and people living in poverty.
     ACTION
     5
     Participate in car sharing.
     ACTION
     6
     Support affordable public transportation.
     ACTION
     7
     Support better climate refugee policy and treatment.
     ACTION
     8
     Donate to organizations promoting the rights of Indigenous people whose livelihoods are disproportionately affected by climate change.
     ACTION
     9
     Encourage subsistence models for food security.
     ACTION
     10
     Learn about the intersection between energy, poverty, and the climate.
     
     
     
     
     */
    
    
    
    
    //static var deedActivities = [ ["Activity 1A", "Activity1B","Activity 1C"],["Activity 2A", "Activity2B","Activity 2C"],["Activity 3A", "Activity3B","Activity 3C"],["Activity 4A", "Activity4B","Activity 4C"],["Activity 5A", "Activity5B","Activity 5C"],["Activity 6A", "Activity6B","Activity 6C"],["Activity 7A", "Activity7B","Activity 7C"],["Activity 8A", "Activity8B","Activity 8C"],["Activity 9A", "Activity9B","Activity 9C"],["Activity 10A", "Activity10B","Activity 10C"],["Activity 11A", "Activity11B","Activity 11C"],["Activity 12A", "Activity12B","Activity 12C"],["Activity 13A", "Activity13B","Activity 13C"],["Activity 14A", "Activity14B","Activity 14C"],["Activity 15A", "Activity15B","Activity 15C"],["Activity 16A", "Activity16B","Activity 16C"],["Activity 17A", "Activity17B","Activity 17C"]]
    //static var deedPoints = [ "Activity 1A":1, "Activity1B":2,"Activity 1C":3,"Activity 2A":4, "Activity2B":5,"Activity 2C":6,"Activity 3A":7, "Activity3B":8,"Activity 3C":9,"Activity 4A":10, "Activity4B":11,"Activity 4C":12,"Activity 5A":13, "Activity5B":14,"Activity 5C":15,"Activity 6A":16, "Activity6B":17,"Activity 6C":18,"Activity 7A":19, "Activity7B":20,"Activity 7C":21,"Activity 8A":22, "Activity8B":23,"Activity 8C":24,"Activity 9A":25, "Activity9B":26,"Activity 9C":27,"Activity 10A":28, "Activity10B":29,"Activity 10C":30,"Activity 11A":1, "Activity11B":2,"Activity 11C":3,"Activity 12A":4, "Activity12B":5,"Activity 12C":6,"Activity 13A":7, "Activity13B":8,"Activity 13C":9,"Activity 14A":10, "Activity14B":11,"Activity 14C":12,"Activity 15A":13, "Activity15B":14,"Activity 15C":15,"Activity 16A":16, "Activity16B":17,"Activity 16C":18,"Activity 17A":19, "Activity17B":20,"Activity 17C":21]
        var body: some View {
            VStack {
                Text("Current points: \(pointCount)")
                    .font(.system(size:40))
                List {
                    ForEach(deedNames.indices, id:\.self) { index in
                        GoodDeedRow(imageName: deedImages[index], name: deedNames[index], description: deedDescriptions[index], activities:GoodDeedView.deedActivities[index])
                    }
                }
                .listRowSeparator(.hidden)
                Spacer()
            }
        }
    }

    struct GoodDeedView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

    struct GoodDeedRow: View {
        var imageName: String
        var name: String
        var description: String
        var activities: [String]
        
        @AppStorage("pointsCount") var pointCount=0
        @State private var showOptions=false
        
        var body: some View {
            HStack(alignment: .top, spacing: 20) {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100)
                    .cornerRadius(20)
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.system(.title2, design: .rounded))
                    Text(description)
                        .font(.system(.subheadline, design: .rounded))
                    //    .foregroundColor(.gray)
                }
            }
            .onTapGesture {
                showOptions.toggle()
            }
            .confirmationDialog("Confirm activity", isPresented: $showOptions, titleVisibility: .visible) {
                            ForEach(activities, id: \.self) { activity in
                                /*
                                Button(activity){
                                    if let points=GoodDeedView.deedPoints [activity] {
                                        print("Activity \(activity) led to \(points) points")
                                        pointCount+=points
                                        
                                    }
                                        .lineLimit(2)
                                 */
                                Button(action:{
                                    if let points=GoodDeedView.deedPoints [activity] {
                                        print("Activity \(activity) led to \(points) points")
                                        pointCount+=points
                                        
                                    }}, label:{
                                        Text(activity)
                                            .font(.system(size:24)).lineLimit(3)
                                            .multilineTextAlignment(.leading)
                                        })
                                    
                                    
                            }
                        }
        }
    }

   

