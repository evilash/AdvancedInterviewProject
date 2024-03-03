//
//  TenorSetup.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 7/5/21.
//

import Foundation

struct TenorSetup {
    private static let apiKey = "ADD-API-KEY"
    private static let giphy = "https://api.giphy.com/v1/gifs/search"
    private static let filters = "rating=g&media_filter=gif&limit=1"
    
    static func url(with string: String, for tenorURLType: TenorURL) -> URL? {
        var url: URL?
        
        switch tenorURLType {
        case .response:
            let query = string.replacingOccurrences(of: " ", with: "+")
            url = URL(string: "\(giphy)?api_key=\(apiKey)&q=\(query)&\(filters)")
        case .gif:
            url = URL(string: string)
        }
        
        return url
    }
}
