//
//  DashboardView.swift
//  Leafin
//
//  Created by Farendza Muda on 02/12/21.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                ZStack{
                    Color.PrimaryColor.edgesIgnoringSafeArea(.all)
                    
                    VStack(alignment: .leading){
                        HStack{
                            Spacer()
                            VStack{
                                Text("August 2022")
                                    .font(.system(size: 14)).bold()
                                    .foregroundColor(Color.text_gray2_color)
                                
                                Text("Rp. 1.000.000")
                                    .font(.largeTitle).bold()
                                    .foregroundColor(Color.MainColor)
                            }
                            .padding(.all, 5)
                            Spacer()
                        }
                        
                        Spacer(minLength: 15)
                        HStack{
                            Spacer()
                            ZStack{
                                VStack(spacing: 0){
                                    HStack{
                                        Text("Watch Out, You're overspending")
                                            .foregroundColor(.white)
                                    }
                                    .frame(height: 52)
                                    
                                    HStack{
                                        VStack(spacing: 0){
                                            HStack{
                                                Spacer()
                                                Text("Expense Rate")
                                                    .font(.system(size: 14))
                                                    .foregroundColor(Color.textBlack)
                                                Spacer(minLength: 70)
                                                Text("Your Expense to Date")
                                                    .font(.system(size: 14))
                                                    .foregroundColor(Color.text_gray_color)
                                                Spacer()
                                            }
                                            ZStack{
                                                BarLine()
                                                HStack(alignment: .bottom) {
                                                    Rectangle()
                                                        .frame(width: 5, height: 42)
                                                    Text("15 Aug")
                                                        .font(.caption)
                                                        .foregroundColor(Color.textBlack)
                                                        .cornerRadius(4)
                                                }
                                            }
                                            
                                        }
                                    }
                                    .frame(width: 347, height: 77)
                                    .background(Color.SecondaryColor)
                                    
                                    HStack(spacing: 0){
                                        ZStack{
                                            Rectangle()
                                                .foregroundColor(Color.SecondaryColor)
                                                .border(Color.text_gray_color, width: 1)
                                            HStack{
                                                Spacer()
                                                VStack{
                                                    Text("Total Income")
                                                        .font(.system(size: 12))
                                                        .frame(width: 100, alignment: .topLeading)
                                                        .foregroundColor(Color.text_gray_color)
                                                    Text("Rp. 2.000.000")
                                                        .font(.system(size: 14)).bold()
                                                        .frame(width: 100, alignment: .topLeading)
                                                }
                                                Spacer()
                                                Button(action: {}, label: {
                                                    Image(systemName: "plus.circle.fill")
                                                        .resizable()
                                                        .foregroundColor(Color.ActionColor)
                                                        .frame(width: 24, height: 24)
                                                })
                                                Spacer()
                                            }
                                        }
                                        ZStack{
                                            Rectangle()
                                                .foregroundColor(Color.SecondaryColor)
                                                .border(Color.text_gray_color, width: 1)
                                            
                                            VStack{
                                                Text("Total Expense")
                                                    .font(.system(size: 12))
                                                    .frame(width: 130, alignment: .topTrailing)
                                                    .foregroundColor(Color.text_gray_color)
                                                Text("Rp. 75.000")
                                                    .font(.system(size: 14)).bold()
                                                    .frame(width: 130, alignment: .topTrailing)
                                            }
                                            
                                        }
                                        
                                    }
                                }
                                .border(Color.text_gray_color, width: 1)
                            }
                            .frame(width: 347, height: 185)
                            .background(Color.MainColor)
                            .cornerRadius(10)
                            .shadow(radius: 5, x: 2, y: 3)
                            .shadow(color: Color.SecondaryColor, radius: 5, x: -2, y: -3)
                            
                            Spacer()
                        }
                        Spacer(minLength: 30)
                        HStack{
                            Text("Today's Expense")
                                .font(.headline)
                            Spacer(minLength: 65)
                            
                            HStack{
                                Text("Rp. 50.000")
                                    .font(.system(size: 24)).bold()
                                    .foregroundColor(Color.MainColor)
                            }
                            .frame(width: 150, alignment: .topTrailing)
                            Spacer(minLength: 10)
                        }
                        Spacer(minLength: 20)
                        HStack{
                            Text("Categories").font(.headline)
                            Spacer()
                            Button(action: {}, label: {
                                Image(systemName: "plus.circle.fill")
                                    .resizable()
                                    .foregroundColor(Color.ActionColor)
                                    .frame(width: 24, height: 24)
                                    .padding(.horizontal)
                            })
                            
                        }
                    }
                    .padding()
                    
                }
            }
            .navigationTitle("Your Money")
        }
    }
    
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
