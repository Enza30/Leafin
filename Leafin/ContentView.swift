//
//  ContentView.swift
//  Leafin
//
//  Created by Farendza Muda on 02/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            DashboardView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Your Money")
                }
            BudgetView()
                .tabItem {
                    Image(systemName: "banknote.fill")
                    Text("Budget")
                }
            HistoryView()
                .tabItem {
                    Image(systemName: "chart.bar.fill")
                    Text("History")
                }
        }
        .accentColor(Color.MainColor)
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
