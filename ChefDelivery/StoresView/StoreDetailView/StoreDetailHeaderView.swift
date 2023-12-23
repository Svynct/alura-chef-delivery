//
//  StoreDetailHeaderView.swift
//  ChefDelivery
//
//  Created by Ricardo dos Santos Amaral on 23/12/23.
//

import SwiftUI

struct StoreDetailHeaderView: View {
    
    @EnvironmentObject var store: StoreType
    
    var body: some View {
        VStack {
            Image(store.headerImage)
                .resizable()
                .scaledToFit()
            
            HStack {
                Text(store.name)
                    .font(.title)
                    .bold()
                
                Spacer()
                
                Image(store.logoImage)
            }
            .padding(.vertical, 8)
            .padding(.horizontal)
            
            HStack {
                Text(store.location)
                
                Spacer()
                
                ForEach(1...store.stars, id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .font(.caption)
                }
            }
            .padding(.vertical, 8)
            .padding(.horizontal)
        }
    }
}

struct StoreDetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailHeaderView()
            .environmentObject(storesMock[0])        
    }
}
