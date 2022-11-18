//
//  SwiftUIView.swift
//  MyLibretto
//
//  Created by Ludovica Marte on 15/11/22.
//

import SwiftUI

struct dashboardView: View {
    let texts = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        
    ]
    let squares = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        
    ]
    var body: some View {
        ZStack{
            Color(UIColor.systemGray5) .opacity(0.5)
                .ignoresSafeArea()
            
        
            VStack(spacing: 15){
                Button(action: {}){
                    Image(systemName:"ellipsis.circle")
                        .padding(.leading, 330)
                        .padding(.top, 10)
                        .imageScale(.large)
                }
                
                Text("Dashboard")
                    .frame(width: 300, height: 10)
                    .font(.largeTitle)
                    .bold()
                    .padding(.trailing, 180)
                ScrollView{
                    Image("uni")
                        .resizable()
                        .frame(width: 400, height: 190)
                        .padding(.bottom, 40)
                    
                    VStack(spacing: -10){
                        Text("Univesità di Napoli Federico II")
                            .padding(.top)
                        
                        Text("Digital Communication")
                            .padding()
                            .foregroundColor(.mint)
                        
                        
                    }.background(RoundedRectangle(cornerRadius: 20)
                        .fill(.white)
                        .frame(width: 370, height:60))
                    .padding(.top, -130)
                    
                    ZStack{
                        LazyVGrid (columns: squares, alignment: .center, spacing: 120){
                            
                            Text("")
                                .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(.white)
                                    .frame(width: 155, height:75))
                            
                            Text("")
                                .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(.white)
                                    .frame(width: 155, height:75))
                            
                            Text("")
                                .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(.white)
                                    .frame(width: 155, height:75))
                            
                            Text("")
                                .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(.white)
                                    .frame(width: 155, height:75))
                        }
                    }.frame(width: 390, height: 170)
                        .padding(.bottom)
                        .foregroundColor(.black).bold()
                        .font(.title)
                    
                    VStack{
                        LazyVGrid (columns: texts, alignment: .center, spacing: 115){
                            
                            Text("Current Average")
                            Text("Passed Exams")
                            Text("Paid Fees")
                            Text("Credits Earned")
                        }.frame(width: 388, height: 140)
                            .padding(.top, -203.0)
                            .font(.subheadline).bold().foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                        
                        LazyVGrid (columns: texts, alignment: .center, spacing: 103){
                            
                            Text("28")
                            Text("1")
                            Text("€136,40")
                            Text("9/180")
                        }.frame(width: 388, height: 140)
                            .padding(.top, -172.0)
                            .font(.title).fontWeight(.semibold).foregroundColor(.black).bold()
                            .multilineTextAlignment(.center)
                        
                        VStack(spacing: 23){
                            
                            Text("Final grade prediction")
                                .padding(.top, 80)
                                .font(.title) .fontWeight(.semibold)
                            Image ("calcPrediction")
                                .resizable()
                                .frame(width: 184, height: 189)
                            
                            Text("102.67/110")
                                .padding(.top, -150)
                            
                        }.frame(width: 300, height: 100)
                            .padding(.top, 115)
                        
                    }
                }
            }
                
        }
        }
            
        }
struct dashboardView_Previews: PreviewProvider {
    static var previews: some View {
        dashboardView()
    }
}
