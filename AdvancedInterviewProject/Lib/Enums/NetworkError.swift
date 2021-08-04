//
//  NetworkError.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 7/7/21.
//

import Foundation

enum NetworkError: String, Identifiable, Error {
    case malformedURL = "There is something wrong with your URL"
    case invalidStatusCode = "You status code is not 200"
    case badData = "Your data is garbage!"
    case isNotRunning = "We can't start your GIF!"
    case other = "I have no idea what you did!"
    
    var id: String { rawValue }
}
