//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Jiradet Amornpimonkul on 5/28/23.
//

import Foundation

/// Object that represents a singlet API call
final class RMRequest {
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    
    private let endpoints: RMEndpoint
    private let pathComponents: Set<String>
    private let queryParameters: [URLQueryItem]
    
    private var urlString: String {
        var string = Constants.baseURL
        string += "/"
        string += endpoints.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({ string += "/\($0)" })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public let httpMethod = "GET"
    
    public init(endpoints: RMEndpoint,
                pathComponents: Set<String> = [],
                queryParameters: [URLQueryItem] = []) {
        self.endpoints = endpoints
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
