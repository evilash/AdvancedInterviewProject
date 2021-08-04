//
//  TenorSetup.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 7/5/21.
//

import Foundation

struct TenorSetup {
    private static let apiKey = "ADD-API-KEY-HERE"
    private static let baseURL = "https://api.tenor.com/v1/search"
    private static let filters = "contentfilter=high&media_filter=minimal&limit=1&media_filter=minimal"
    
    static func url(with string: String, for tenorURLType: TenorURL) -> URL? {
        var url: URL?
        
        switch tenorURLType {
        case .response:
            let query = string.replacingOccurrences(of: " ", with: "+")
            url = URL(string: "\(baseURL)?key=\(apiKey)&q=\(query)&\(filters)")
        case .gif:
            url = URL(string: string)
        }
        
        return url
    }
}
