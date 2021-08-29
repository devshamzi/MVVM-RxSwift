//
//  HomeModel.swift
//  Shisheo
//
//  Created by Shamzi on 29/08/2021.
//

import Foundation

struct HomeModel: Codable {
    
    var name : String?
    var offer : String?
    var description : String?
    var image_url : String?
    
    private enum CodingKeys:String,CodingKey{
        case name
        case offer
        case description
        case image_url
        
    }
}
