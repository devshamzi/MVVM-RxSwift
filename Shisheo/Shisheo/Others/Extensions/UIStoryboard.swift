//
//  UIStoryboard.swift
//  Shisheo
//
//  Created by Shamzi on 29/08/2021.
//

import UIKit

extension UIStoryboard {
    convenience init(name: StoryboardName, bundle: Bundle? = nil) {
        self.init(name: name.rawValue, bundle: bundle)
    }
}
