//
//  HomeService.swift
//  Shisheo
//
//  Created by Shamzi on 29/08/2021.
//

import RxSwift

struct HomeService: Wrapable {
    
    static let shared = HomeService()
    
    private init() {}
    
    func getHomeData() -> Observable<AFResult<[HomeModel]>> {

        return request(url: HomeRoute.TestData.path, param: nil, method: .get)
    }
    
}


