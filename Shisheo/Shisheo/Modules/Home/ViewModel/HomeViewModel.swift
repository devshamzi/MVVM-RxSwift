//
//  HomeViewModel.swift
//  Shisheo
//
//  Created by Shamzi on 29/08/2021.
//

import RxSwift

final class HomeViewModel: BaseViewModel {
 
    enum State {
        case success
        case failure(message: String)
    }
    
    var onChange = PublishSubject<State>()
    var dataSource = [HomeModel]()
    
    func fetchHomeData(){
        HomeService.shared.getHomeData()
            .subscribe(onNext: {[weak self] (result) in
                guard let self = self else {return}
                switch result {
                case .success(let value):
                    self.dataSource = value
                    self.onChange.onNext(.success)
                case .failure(let error):
                    
                    self.onChange.onNext(.failure(message: error.localizedDescription))
                }
            })
            .disposed(by: bag)
    }
}
