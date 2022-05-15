//
//  ViewModel.swift
//  ListApp
//
//  Created by German Blonski on 12.05.2022.
//

import Foundation

protocol ListViewModelType : ObservableObject {
    var page: Page? { get set }
    func getData()
}

class ListViewModel: ListViewModelType {
    
    @Published var page: Page?

    func getData() {
        DataManager.shared.getData(completion: { result in
            switch result {
            case .success(let page):
                DispatchQueue.main.async {
                    self.page = page
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        })
    }
    
}
