//
//  UIView+Extension.swift
//  Crypto
//
//  Created by Burak Özdemir on 10.09.2025.
//

import UIKit

extension UIView {
    func addSubviews(_ subviews: [UIView]) {
        subviews.forEach { $0.addSubview(self) }
    }
}
