//
//  GIFTestViewModel.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 7/12/21.
//

import SwiftUI

final class GIFTestViewModel: ObservableObject {
    typealias DataForGIF = (Data) -> Void
    
    @Published var title = ""
    @Published var image = UIImage()
    @Published var networkError: NetworkError?
    private let manager = NetworkManager()
    private var animate = Animate()
    var query = ""
    
    var error: String {
        networkError?.id ?? Constants.Alert.message
    }
    
    func getGifAndTitle() {
        extractData(with: query, for: .response) { data in
            let gif = self.decode(from: data)
            self.getImage(from: gif.url)
            DispatchQueue.main.async {
                self.title = gif.title
            }
        }
    }
    
    func stopGIF() { animate.stopping() }
    
    // MARK: - Helper functions
    private func getImage(from url: String) {
        extractData(with: url, for: .gif) { data in
            self.animate = .init(data: data)
            
            let isRunning = self.animate.image { cgImage in
                self.image = UIImage(cgImage: cgImage)
            }
            
            guard isRunning else {
                self.getNetwork(error: .isNotRunning)
                return
            }
        }
    }
    
    private func extractData(with query: String, for type: TenorURL, handler: @escaping DataForGIF) {
        manager.getData(with: query, for: type) { result in
            switch result {
            case .failure(let error):
                self.getNetwork(error: error)
            case .success(let data):
                handler(data)
            }
        }
    }
    
    private func getNetwork(error networkError: NetworkError) {
        DispatchQueue.main.async {
            self.networkError = networkError
        }
    }
    
    private func decode(from data: Data) -> GIFModel {
        let decoder = JSONDecoder()
        let response = try? decoder.decode(GiphyResponse.self, from: data)
        let results = response?.data.first
        let title = results?.title ?? Constants.Alert.title
        let url = getGifURL(from: results)
        
        return GIFModel(title: title, url: url)
    }
    
    private func getGifURL(from results: Results?) -> String {
        guard let media = results?.images.original, !media.url.isEmpty else {
            return Bundle.main.path(forResource: Constants.Images.error, ofType: Constants.FileType.gif) ?? ""
        }
        
        return media.url
    }
}
