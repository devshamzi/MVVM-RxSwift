//
//  MainCoordinator.swift
//  Shisheo
//
//  Created by Shamzi on 29/08/2021.
//

import UIKit


class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        navigationController.navigationBar.isHidden = true
        self.navigationController = navigationController
    }

    func goTohome() {
        let homeVC = HomeViewController.instantiate(with: .Home)
        homeVC.coordinator = self
        navigationController.pushViewController(homeVC, animated: true)
    }
}
