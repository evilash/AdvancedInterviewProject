//
//  NetworkManager.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 7/6/21.
//

import Foundation

struct NetworkManager {
    typealias DataFromResponse = (Result<Data, NetworkError>) -> Void
    
    func getData(with query: String, for tenorURLType: TenorURL, handler: @escaping DataFromResponse) {
        guard let url = TenorSetup.url(with: query, for: tenorURLType) else {
            handler(.failure(.malformedURL))
            return
        }
        
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            guard let session = response as? HTTPURLResponse, session.statusCode == 200 else {
                handler(.failure(.invalidStatusCode))
                return
            }
            
            if let _ = error {
                handler(.failure(.other))
                return
            }
            
            guard let data = data else {
                handler(.failure(.badData))
                return
            }
            
            handler(.success(data))
            
        }
        task.resume()
    }
}
