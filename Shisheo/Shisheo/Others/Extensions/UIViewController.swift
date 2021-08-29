//
//  UIViewController.swift
//  Shisheo
//
//  Created by Shamzi on 29/08/2021.
//

import UIKit

extension UIViewController {
    static func instantiate(with storyboard: StoryboardName) -> Self {
        let viewControllerName = String(describing: self)
        return UIStoryboard(name: storyboard).instantiateViewController(withIdentifier: viewControllerName) as! Self
    }
}
