//
//  examView.swift
//  MyLibretto
//
//  Created by Ludovica Marte on 15/11/22.
//

import SwiftUI

struct examView: View {
    var body: some View{
        NavigationView {
                ZStack{
                    Color(UIColor.systemGray5) .opacity(0.5)
                        .ignoresSafeArea(.all)
                        
                    Text("")
                        .navigationTitle("Exams List")
                        
                        .toolbar(content: {
                            ToolbarItem(placement: .navigationBarTrailing) {
                                Button(action: {()
                                }) {
                                    Image(systemName: "plus")
                                        .imageScale(.large)
                                }
                            }
                            ToolbarItem(placement: .navigationBarTrailing) {
                                Button(action: {()
                                }) {
                                    Image(systemName: "ellipsis.circle")
                                        .imageScale(.large)
                                }
                            }
                        })
                    
                    VStack{
                        
                        List {
                            HStack(spacing: 185){
                                Text("Exam questions")
                                    .foregroundColor(.orange)
                                Button(action: {}){
                                    Image(systemName:"chevron.right")
                                        .imageScale(.large)
                                        .foregroundColor(Color.orange)
                                      
                                       
                                        
                                }
                            }.frame(width: 390, height: 10)
                            
                            Section(header: Text("Important")) {
                                Text("Politic science")
                                Text("Design Lab")
                                Text("Marketing and new media")
                                Text("Modern history")
                                Text("English")
                            }
                            
                            Section(header: Text("Other")) {
                                Text("Computer science and web")
                                Text("Communication and cultural processes")
                                Text("Anthropological research")
                                Text("Media law")
                                Text("Social psychology")
                            }
                            Section(header: Text("Passed")) {
                                    Text("Sociology")
                                    Text("Statistic")
                                    Text("Social research")
                                
                            }
                        }
                    }
                        }
                }
            }
        }
    struct examView_Previews: PreviewProvider {
        static var previews: some View {
            examView()
        }
    }
