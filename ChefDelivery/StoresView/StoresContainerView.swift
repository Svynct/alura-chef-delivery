//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Ricardo dos Santos Amaral on 22/12/23.
//

import SwiftUI

struct StoresContainerView: View {
    
    let title = "Lojas"
    @State private var ratingFilter = 0
    
    var stores: [StoreType]
    
    var filteredStores: [StoreType] {
        return stores.filter { store in
            store.stars >= ratingFilter
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text(title)
                    .font(.headline)
                
                Spacer()
                
                Menu("Filtrar") {
                    Button {
                        ratingFilter = 0
                    } label: {
                        Text("Limpar filtro")
                    }
                    
                    Divider()
                    
                    ForEach(1...5, id: \.self) { rating in
                        Button {
                            ratingFilter = rating
                        } label: {
                            Text("\(rating) \(rating == 1 ? "estrela" : "estrelas") ou mais")
                        }
                    }
                }
                .foregroundColor(.black)
            }
            
            if filteredStores.isEmpty {
                Text("Nenhum resultado encontrado")
                    .font(.title2)
                    .bold()
                    .foregroundColor(Color("ColorRed"))
                    .padding(.vertical, 32)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            } else {
                VStack(alignment: .leading, spacing: 30) {
                    ForEach(filteredStores) { store in
                        NavigationLink {
                            StoreDetailView()
                                .environmentObject(store)
                        } label: {
                            StoreItemView(store: store)
                        }
                    }
                }
                .foregroundColor(.black)
            }
        }
        .padding(20)
    }
}

struct StoresContainerView_Previews: PreviewProvider {
    static var previews: some View {
        StoresContainerView(stores: storesMock)
            .previewLayout(.sizeThatFits)
    }
}
