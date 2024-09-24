//
//  StudentDashboardView.swift
//  SkipCafApp
//
//  Created by Bhogal, Rohit on 2024-08-07.
//

import SwiftUI

struct StudentDashboardView: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            DashboardView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)

            OrdersView()
                .tabItem {
                    Image(systemName: "bag.fill")
                    Text("Orders")
                }
                .tag(1)

            ChatsView()
                .tabItem {
                    Image(systemName: "message.fill")
                    Text("Chats")
                }
                .tag(2)

            NotificationsView()
                .tabItem {
                    Image(systemName: "bell.fill")
                    Text("Notification")
                }
                .tag(3)

            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(4)
        }
        .accentColor(.orange)
    }
}

struct DashboardView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    // Header
                    HStack {
                        Text("Order Your Food")
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer()
                        HStack(spacing: 20) {
                            NavigationLink(destination: CartView()) {
                                Image(systemName: "cart")
                                    .foregroundColor(.orange)
                            }
                            Image(systemName: "bell.fill")
                                .foregroundColor(.orange)
                        }
                    }
                    .padding(.horizontal)

                    // Search Bar
                    HStack {
                        TextField("Search food, drink, desserts", text: .constant(""))
                            .padding(.leading, 20)
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .padding()
                        Image(systemName: "slider.horizontal.3")
                            .foregroundColor(.gray)
                            .padding()
                    }
                    .frame(height: 50)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)

                    // Promotional Banner
                    ZStack {
                        Color.orange
                            .cornerRadius(10)
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Grab Our Exclusive")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                Text("Food Discounts Now!")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .bold()
                                Button(action: {}) {
                                    Text("Order Now")
                                        .padding()
                                        .background(Color.black)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                                .padding(.top, 10)
                            }
                            Spacer()
                            Image("sandwich") // Ensure this is in your asset catalog
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 150)
                                .clipped()
                        }
                        .padding()
                    }
                    .frame(height: 180)
                    .padding(.horizontal)

                    // Categories
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            CategoryButton(imageName: "sandwich", title: "Burger")
                            CategoryButton(imageName: "pizza", title: "Pizza")
                            CategoryButton(imageName: "noodles", title: "Spaghetti")
                            CategoryButton(imageName: "rice", title: "Fried Rice")
                            CategoryButton(imageName: "tacos", title: "Tacos")
                        }
                        .padding(.horizontal)
                    }
                    .padding(.bottom)

                    // Recommended Section
                    HStack {
                        Text("Recommended For You")
                            .font(.headline)
                        Spacer()
                        Button(action: {}) {
                            Text("See All")
                                .foregroundColor(.orange)
                        }
                    }
                    .padding(.horizontal)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            RecommendedCardView(imageName: "cookies", title: "Cookies", description: "Chocolate Chip Cookies Topped with Whipping Cream", price: "$1.99", rating: "4.8")
                            RecommendedCardView(imageName: "cake", title: "Strawberry Cake", description: "Delicious Strawberry Cake With Whipped Cream Topping", price: "$2.99", rating: "4.7")
                        }
                        .padding(.horizontal)
                    }

                    Spacer()
                }
                .padding(.top)
                .background(Color(.systemGray6).edgesIgnoringSafeArea(.all))
            }
            .navigationBarHidden(true)
        }
    }
}

struct CategoryButton: View {
    var imageName: String
    var title: String

    var body: some View {
        VStack {
            Image(imageName) // Ensure this is in your asset catalog
                .resizable()
                .frame(width: 40, height: 40)
                .padding()
                .background(Color.orange)
                .cornerRadius(10)
            Text(title)
                .font(.caption)
        }
    }
}

struct RecommendedCardView: View {
    var imageName: String
    var title: String
    var description: String
    var price: String
    var rating: String

    var body: some View {
        VStack(alignment: .leading) {
            Image(imageName) // Ensure this is in your asset catalog
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 100)
                .clipped()
                .cornerRadius(10)
        
            Text(title)
                .fontWeight(.semibold)
            Text(description)
                .font(.caption)
                .foregroundColor(.gray)
            HStack {
                Text(price)
                    .fontWeight(.bold)
                Spacer()
                Text(rating)
                    .foregroundColor(.orange)
            }
        }
        .frame(width: 150)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

// Placeholder Views for the other tabs
struct OrdersView: View {
    var body: some View {
        Text("Orders View")
    }
}

struct ChatsView: View {
    var body: some View {
        Text("Chats View")
    }
}

struct NotificationsView: View {
    var body: some View {
        Text("Notifications View")
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Profile View")
    }
}

struct StudentDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        StudentDashboardView()
    }
}
