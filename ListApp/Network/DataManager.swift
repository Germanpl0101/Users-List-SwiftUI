//
//  DataManager.swift
//  ListApp
//
//  Created by German Blonski on 15.05.2022.
//

import Foundation

protocol DataManagerType {
    
    func getData(completion: @escaping (Result<Page, Error>) -> Void)
    
}

final class DataManager: DataManagerType {
    
    static let shared = DataManager()
    
    private var path: String = "https://reqres.in/api/users"
    private var session = URLSession.shared
    
    func getData(completion: @escaping (Result<Page, Error>) -> Void) {
        guard let request = URL(string: self.path) else { return completion(.failure(NetworkError.requestError)) }
        session.dataTask(with: request) { data, _, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            let decoder = JSONDecoder()
            guard let data = data else {
                return
            }
            do {
                let page = try decoder.decode(Page.self, from: data)
                completion(.success(page ))
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
