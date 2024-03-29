//
//  RMService.swift
//  RickAndMorty
//
//  Created by Jiradet Amornpimonkul on 5/28/23.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    
    static let shared = RMService()
    
    private init() {
        
    }
    
    /// send api call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object we expect to get back
    ///   - completion: callback with data or error
    public func execute<T: Codable>(_ request: RMRequest,
                                    expecting type: T.Type,
                                    completion: @escaping (Result<T, Error>  ) -> Void) {
        
    }
    
}
