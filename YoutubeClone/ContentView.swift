//
//  ContentView.swift
//  YoutubeClone
//
//  Created by Ricky Primayuda Putra on 02/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            TabView{
                
                Home()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Beranda")
                    }
                
                Home()
                    .tabItem{
                        Image(systemName: "paperplane.fill")
                        Text("Explorasi")
                    }
                
                Home()
                    .tabItem{
                        Image(systemName: "tray.fill")
                        Text("Subscription")
                    }
                
                Home()
                    .tabItem{
                        Image(systemName: "envelope.fill")
                        Text("Kotak Masuk")
                    }
                
                Home()
                    .tabItem{
                        Image(systemName: "play.rectangle.fill")
                        Text("Koleksi")
                    }
            }
            .accentColor(.red)
        }
    }
}

#Preview {
    ContentView()
}

struct Home: View {
    var body: some View {
        NavigationView{
            HomeView()
            
                .navigationBarItems(
                    leading:
                        HStack{
                            Button(action: {print("Hello Button")}){
                                Image("youtube")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 90, height: 20)
                            }
                        },
                        trailing:
                        HStack(spacing: 30){
                            Button(action: {print("Hello Button")}){
                                Image(systemName: "tray.full")
                                    .foregroundColor(.secondary)
                            }
                            
                            Button(action: {print("Hello Button")}){
                                Image(systemName: "video.fill")
                                    .foregroundColor(.secondary)
                            }
                            
                            Button(action: {print("Hello Button")}){
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.secondary)
                            }
                            
                            Button(action: {print("Hello Button")}){
                                Image("me")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .clipShape(Circle())
                            }
                        }
                )
                .navigationBarTitle("", displayMode: .inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
