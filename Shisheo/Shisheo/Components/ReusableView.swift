//
//  ReusableView.swift
//  Shisheo
//
//  Created by Shamzi on 29/08/2021.
//

import UIKit

protocol ReusableView {}

extension ReusableView where Self: UIView {

    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
