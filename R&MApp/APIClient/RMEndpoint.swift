//
//  RMEndpoint.swift
//  R&MApp
//
//  Created by Mac on 11/07/2023.
//

import Foundation

//all api requests are one of these 3 endpoints
@frozen enum RMEndpoint: String {
    case character
    case location
    case episode
}
