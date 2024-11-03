//
//  HomeView.swift
//  YoutubeClone
//
//  Created by Ricky Primayuda Putra on 03/11/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        List {
            CellContentView(image: "windah2", profile: "me", title: "Windah MUARAHH!!", desc: "Video Lucu Windah - 1,1jt Ditonton - 5 Bulan yang lalu", duration: "13:00")
            CellContentView(image: "windah3", profile: "me", title: "Bocil KCI KEMBALIII!!", desc: "Video Lucu Windah - 1,4jt Ditonton - 3 Bulan yang lalu", duration: "10:00")
            CellContentView(image: "windah", profile: "me", title: "Windah Ketakutan", desc: "Video Lucu Windah - 4,2jt Ditonton - 3 Bulan yang lalu", duration: "15:00")
        }
    }
}

#Preview {
    HomeView()
}

struct CellContentView: View {
    
    var image: String
    var profile: String
    var title: String
    var desc: String
    var duration: String
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                Text(duration)
                    .padding(.all, 5)
                    .foregroundColor(.white)
                    .font(.caption)
                    .background(.black)
                    .cornerRadius(5)
                    .padding(.trailing, 5)
                    .padding(.bottom, 5)
            }
            HStack{
                Image(profile)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                
                VStack(alignment: .leading){
                    Text(title)
                        .font(.headline)
                    HStack{
                        Text(desc)
                            .font(.caption)
                    }
                }
                Spacer()
                Image(systemName: "list.bullet")
            }
        }
    }
}
