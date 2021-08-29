//
//  Connectivity.swift
//  Shisheo
//
//  Created by Shamzi on 29/08/2021.
//

import Alamofire

class Connectivity {
    class var isConnectedToInternet:Bool {
        return NetworkReachabilityManager()?.isReachable ?? false
    }
}
