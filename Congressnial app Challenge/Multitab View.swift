//
//  Multitab View.swift
//  Congressnial app Challenge
//
//  Created by Kavita Sahai  on 10/6/22.
//

import SwiftUI

struct MultiTabView: View {
    var body: some View {
        TabView{
            TestView()
                .tabItem{
                    Label("Test",systemImage: "cart.fill.badge.plus")
                }
            WebView(url:URL(string:"https://djdribbles66.wixsite.com/forces-of-nature")!)
                .tabItem{
                    Label("Home Page",systemImage: "house.fill")
                }
            GoodDeedView()
                .tabItem{
                    Label("Do Good",systemImage: "person.fill.checkmark")
                }
            RedeemPointsView()
                .tabItem{
                    Label("Redeem",systemImage: "cart.fill.badge.plus")
                }
        }
    }
}

struct MultiTabView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            MultiTabView()
        }
    }
}

struct TestView: View {
    //let activities = ["Activity 2A","Activity 2B","Activity 2C"]
    let activities = ["Donated to sustainable development efforts","Donated old clothes to those in need","Participated in car sharing"]
    @State var showOptions=false
    var body: some View {
        HStack {
            Text("Hello")
        }
        .onTapGesture {
            showOptions.toggle()
        }
        .confirmationDialog("Confirm activity", isPresented: $showOptions)  {
            ForEach(activities, id: \.self) { activity in
                Button(action:{
                    if let points=GoodDeedView.deedPoints [activity] {
                        print("Activity \(activity) led to \(points) points")
                        //pointCount+=points
                        
                    }}, label:{
                        Text(activity)
                            .font(.system(size:8)).lineLimit(3)
                            .multilineTextAlignment(.leading)
                        })
                    
                    
            }
        }
    }
}
