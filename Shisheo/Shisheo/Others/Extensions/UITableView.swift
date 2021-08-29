//
//  UITableView.swift
//  Shisheo
//
//  Created by Shamzi on 29/08/2021.
//

import UIKit

import UIKit

extension UITableView {
    
    func register<T: UITableViewCell>(_ type: T.Type) where T: ReusableView {
        let nib = UINib(nibName: T.reuseIdentifier, bundle: nil)
        self.register(nib, forCellReuseIdentifier: T.reuseIdentifier)
    }
}
