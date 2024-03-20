//
//  GiphyResponse.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 7/5/21.
//

import Foundation

struct GiphyResponse: Decodable {
    let data: [Results]
}

struct Results: Decodable {
    let title: String
    let images: Images
}

struct Images: Decodable {
    let original: GIF
}

struct GIF: Decodable {
    let url: String
}
