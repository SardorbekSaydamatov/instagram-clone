//
//  ContentView.swift
//  instagramClone
//
//  Created by Sardorbek Saydamatov on 14/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            HeaderView()
            
            ScrollView(.vertical, showsIndicators: false){
                HomeStories()
                Divider()
                PostView()
                PostView()
                PostView()
                PostView()
                PostView()
            }
            
            TabBarView() 
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        HStack{
            Image("logo")
            
            Spacer()
            
            HStack{
                Image(systemName: "plus")
                Image(systemName: "heart")
                Image(systemName: "message")
            }
            .font(.system(size: 24))
        }
        .padding(.vertical, 16)
        .padding(.horizontal, 8)
    }
}

struct StoryView: View {
    var image: String
    var name: String
    
    public init(image: String, name: String) {
        self.image = image
        self.name = name
    }
    var body: some View {
        VStack{
            VStack{
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(60)
                    .overlay{
                        Circle()
                            .stroke(LinearGradient(colors: [.blue, .purple, .red, .pink, .yellow, .orange ], startPoint: .topLeading, endPoint: .bottomTrailing),lineWidth: 2.5)
                            .frame(width: 70, height: 70 )
                    }
            }
            .frame(width: 70 , height: 80)
            
            Text(name )
                .font(.caption)
        }
    }
}

struct HomeStories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            
            HStack(spacing: 16) {
                StoryView(image: "person_1", name: "Chin Lin")
                StoryView(image: "person_2", name: "Sardorbek")
                StoryView(image: "person_3", name: "Shoh")
                StoryView(image: "person_4", name: "Asilbek")
                StoryView(image: "person_5", name: "Fayzullo")
                StoryView(image: "person_6", name: "Fazliddin")
            }
            .padding(.horizontal, 8)
        }
        .padding(.vertical, 12)
    }
}

struct PostHeaderView: View {
    var body: some View {
        HStack{
            HStack{
                Image("person_1")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(40)
                
                Text("Chin Lin")
                    .font(.caption)
                    .fontWeight(.bold )
            }
            Spacer()
            
            Image(systemName: "ellipsis")
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 8 )
    }
}

struct PostContentView: View {
    var body: some View {
        VStack{
            Image("post_1")
                .resizable()
                .frame(width: .infinity, height: 400)
            
            HStack{
                HStack{
                    Image(systemName: "heart")
                    Image(systemName: "message")
                    Image(systemName: "envelope")
                }
                Spacer()
                
                Image(systemName: "bookmark")
            }
            .font(.system(size: 24 ))
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
        }
    }
}

struct PostDescriptionView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Like by Sardorbek and other 10 others")
            Text("This is the user generated description")
            
            HStack{
                HStack{
                    Image("person_2")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .cornerRadius(30)
                    
                    Text("Add a commnet...")
                        .foregroundColor(.secondary)
                }
                Spacer()
                
                HStack{
                    Text("😍")
                    Text("😆")
                    Image(systemName: "plus.circle")
                        .foregroundColor(.secondary)
                }
            }
        }
        .frame(width: .infinity)
        .padding(.horizontal, 12)
    }
}

struct PostView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            PostHeaderView()
            PostContentView()
            PostDescriptionView()
        }
    }
}

struct TabBarView: View {
    var body: some View {
        VStack(spacing: 0){
            Divider()
            
            HStack{
                Image(systemName: "house")
                Spacer()
                Image(systemName: "magnifyingglass")
                Spacer()
                Image(systemName: "display")
                Spacer()
                Image(systemName: "bag")
                Spacer()
                Image("person_2")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .cornerRadius(24)
            }
            .font(.system(size: 22 ))
            .padding(.horizontal, 24)
            .padding(.top, 12)
        }
    }
}
