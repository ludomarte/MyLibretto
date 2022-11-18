//
//  scheduleView.swift
//  MyLibretto
//
//  Created by Ludovica Marte on 15/11/22.
//

import SwiftUI

struct scheduleView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color(UIColor.systemGray5) .opacity(0.5)
                    .ignoresSafeArea(.all)
            
                Text ("Insert your schedule\nTap [+]")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                    .navigationTitle("Schedule")
                
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
            }
        }
    }
}
struct scheduleView_Previews: PreviewProvider {
    static var previews: some View {
        scheduleView()
    }
}
