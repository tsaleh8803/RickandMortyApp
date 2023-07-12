//
//  RMService.swift
//  R&MApp
//
//  Created by Mac on 11/07/2023.
//

import Foundation
///primary API service object to get rick and morty data
final class RMService {
    ///shared SINGLETON instance
    static let shared = RMService()
    
    ///privatized constructor
    private init() {
        
    }
    
    ///send rick and morty API call
    /// Parameters:
    ///  - request: instance of the request
    ///  - type: the type of object we expect to get back
    ///  - completion: callback with data/error
    
    public func execute<T: Codable>(_ request: RMRequest,
    expecting type: T.Type,
    completion: @escaping (Result<T,Error>) -> Void ) {
    
    }
}
