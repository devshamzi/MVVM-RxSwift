//
//  URLs.swift
//  Shisheo
//
//  Created by Shamzi on 29/08/2021.
//

import Foundation

enum BaseURL : String {
    
    case ApiBaseUrl
    
    var url : String{
        
        switch self {
        case .ApiBaseUrl:
            return "https://gateway-dev.shisheo.com/"
        }
    }
    
}
