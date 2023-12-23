//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Ricardo dos Santos Amaral on 22/12/23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Attributes
    
    private var service = HomeService()
    @State private var stores: [StoreType] = []
    @State private var isLoading = true
    
    // MARK: - View
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                if isLoading {
                    ProgressView()
                } else {
                    NavigationBar()
                        .padding(.horizontal, 15)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 20) {
                            OrderTypeGridView()
                            CarouselTabView()
                            StoresContainerView(stores: stores)
                        }
                    }
                }
            }
        }
        .onAppear {
            Task {
                await getStores()
            }
            getStoresWithAlamofire()
        }
    }
    
    // MARK: - Methods
    
    func getStores() async {
        do {
            let result = try await service.fetchData()
            switch result {
            case .success(let stores):
                self.stores = stores
                self.isLoading = false
            case .failure(let error):
                print(error.localizedDescription)
                self.isLoading = false
            }
        } catch {
            print(error.localizedDescription)
            self.isLoading = false
        }
    }
    
    func getStoresWithAlamofire() {
        service.fetchDataWithAlamofire { stores, error in
            print(stores ?? "nil")
        }
    }
}

#Preview {
    ContentView()
}
