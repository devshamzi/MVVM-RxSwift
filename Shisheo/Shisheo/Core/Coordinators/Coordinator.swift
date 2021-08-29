//
//  Coordinator.swift
//  Shisheo
//
//  Created by Shamzi on 29/08/2021.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func goTohome()
}
