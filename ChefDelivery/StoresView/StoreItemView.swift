//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Ricardo dos Santos Amaral on 22/12/23.
//

import SwiftUI

struct StoreItemView: View {
    
    let store: StoreType
    
    var body: some View {
        HStack {
            Image(store.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            
            VStack {
                Text(store.name)
                    .font(.subheadline)
            }
            
            Spacer()
        }
        .onTapGesture {
            print("clicou em \(store.name)")
        }
    }
}

struct StoreItemView_Previews: PreviewProvider {
    static var previews: some View {
        StoreItemView(store: storesMock[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
