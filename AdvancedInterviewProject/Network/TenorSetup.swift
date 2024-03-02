//
//  TenorSetup.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 7/5/21.
//

import Foundation

struct TenorSetup {
    private static let apiKey = "AIzaSyCLTnCi11mUp3ntfamAk8y5fELyI05tLok"
    private static let baseURL = "https://tenor.googleapis.com/v2/search"
    private static let filters = "limit=1&media_filter=gif&contentfilter=high"
    
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
