//
//  HomeViewController.swift
//  Shisheo
//
//  Created by Shamzi on 29/08/2021.
//

import UIKit

class HomeViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView!{
        didSet{
            tableView.delegate = self
            tableView.dataSource = self
            tableView.keyboardDismissMode = .onDrag
            tableView.register(HomeTableViewCell.self)
        }
    }
    var vm = HomeViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        subscribe()
        fetchData()
    }
    
    func fetchData(){
        vm.fetchHomeData()
    }
}

extension HomeViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.vm.dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.reuseIdentifier, for: indexPath) as! HomeTableViewCell
        cell.model = self.vm.dataSource[indexPath.row]
        return cell
    }
    
}

extension HomeViewController{
    func subscribe() {
        vm.onChange.subscribe(onNext: {[weak self] (state) in
            guard let self = self else {return}
            switch state {
            case .success:
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            case .failure(let message):
                print(message)
              break
            }
        }).disposed(by: bag)
    }
}
