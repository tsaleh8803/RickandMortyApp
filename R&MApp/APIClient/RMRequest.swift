//
//  RMRequest.swift
//  R&MApp
//
//  Created by Mac on 11/07/2023.
//

import Foundation

///object that represents a SINGLE API CALL
final class RMRequest {
    
    //Base url, endpoint, path components, query parameters (optional)
    
 
    ///API Constants
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    ///Desired endpoint
    private let endpoint: RMEndpoint
    ///Path components if there is
    private let pathComponents: Set<String>
    ///Query arguments (if any for example in the case of a filter/search)
    private let queryParameters: [URLQueryItem]
    
    ///Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseURL
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    ///COmputed and constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    ///Desired http method
    public let httpMethod = "GET"
    
    ///Construct request
    public init(endpoint: RMEndpoint, pathComponents: Set<String> = [], queryParameters: [URLQueryItem] = [] ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}


