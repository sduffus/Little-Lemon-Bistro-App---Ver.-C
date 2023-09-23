//
//  itemDetail.swift
//  LittleLemonBistro
//
//  Created by Shaun Duffus on 2023-01-08.
//

import SwiftUI

struct itemDetail: View {
    let item: MenuItem
    
    @EnvironmentObject var order: Order
    
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()

                
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            
            Text(item.description)
                .padding()
            
            Button("Order This") {
                order.add(item: item)
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct itemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            itemDetail(item: MenuItem.example)
                .environmentObject(Order())

        }
    }
}
