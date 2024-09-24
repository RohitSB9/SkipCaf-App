//
//  CartView.swift
//  SkipCafApp
//
//  Created by Bhogal, Rohit on 2024-08-08.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        ScrollView {
            VStack {
                // Header
                HStack {
                    Button(action: {
                        // Action for back button
                    }) {
                        Image(systemName: "arrow.left")
                            .foregroundColor(.black)
                    }
                    Spacer()
                    Text("Details Transaction")
                        .font(.headline)
                    Spacer()
                    // Empty button to balance the back button
                    Button(action: {}) {
                        Image(systemName: "")
                    }
                }
                .padding()
                
                // Item Summary
                HStack {
                    Image("sandwich") // Ensure this image is in your asset catalog
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                    VStack(alignment: .leading) {
                        Text("Classic Cheese burger")
                            .font(.headline)
                        VStack(alignment: .leading) {
                            HStack {
                                Text("1x Classic cheese burger")
                                Spacer()
                                Text("$3.99")
                            }
                            HStack {
                                Text("Extra Cheese")
                                Spacer()
                                Text("$0.99")
                            }
                        }
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    }
                    .padding(.leading)
                    Spacer()
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal)
                
                // Promo Code
                HStack {
                    TextField("Promo Code", text: .constant(""))
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                    Button(action: {
                        // Apply promo code action
                    }) {
                        Text("Apply")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
                .padding(.top)
                
                // Order Summary
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Text("Food Total")
                        Spacer()
                        Text("$4.99")
                    }
                    HStack {
                        Text("Delivery")
                        Spacer()
                        Text("$0.49")
                    }
                    HStack {
                        Text("Discount")
                        Spacer()
                        Text("-$0")
                    }
                    Divider()
                    HStack {
                        Text("Total Payment")
                            .font(.headline)
                        Spacer()
                        Text("$5.48")
                            .font(.headline)
                    }
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal)
                .padding(.top)
                
                Spacer()
                
                // Process Order Button
                Button(action: {
                    // Process order action
                }) {
                    Text("Process Order")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
