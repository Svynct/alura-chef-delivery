//
//  StoreDetailProductsView.swift
//  ChefDelivery
//
//  Created by Ricardo dos Santos Amaral on 23/12/23.
//

import SwiftUI

struct StoreDetailProductsView: View {
    
    @EnvironmentObject var store: StoreType
    @State private var selectedProduct: ProductType?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Produtos")
                .font(.title2)
                .bold()
                .padding()
            
            ForEach(store.products) { product in
                Button {
                    selectedProduct = product
                } label: {
                    StoreDetailProductItemView(product: product)
                }
                .sheet(item: $selectedProduct) { product in
                    ProductDetailView(product: product)
                }
            }
        }
    }
}

struct StoreDetailProductsView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailProductsView()
            .environmentObject(storesMock[0])
    }
}
