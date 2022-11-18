//
//  MyLibrettoApp.swift
//  MyLibretto
//
//  Created by Ludovica Marte on 15/11/22.
//

import SwiftUI

@main
struct MyLibrettoApp: App {
    var body: some Scene {
        WindowGroup {
            VStack{
                TabView{
                        dashboardView()
                            .tabItem {
                                Label ("Dashboard", systemImage: "chart.pie")
                                
                            }
                        scheduleView()
                            .tabItem{
                                Label ("Schedule", systemImage: "clock")
                            }
                        examView()
                            .tabItem{
                                Label ("Exams", systemImage: "doc.plaintext")
                            }
                    }
                }
            }
        }
    }
