//
//  APIRoute.swift
//  Shisheo
//
//  Created by Shamzi on 29/08/2021.
//

import Foundation

enum HomeRoute: String {
    
    case TestData = "social/api/web/post/arina/test"
    
    var path: String {
        return BaseURL.ApiBaseUrl.url + self.rawValue
    }
}
