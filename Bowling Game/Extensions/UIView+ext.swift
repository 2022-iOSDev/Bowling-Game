//
//  UIView+ext.swift
//  Bowling Game
//
//  Created by Vignesh Kumar H S on 07/07/22.
//

import Foundation
import UIKit

extension UIView {
    func createBorderShadow() {
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.shadowRadius = 5.0
        self.layer.shadowOpacity = 0.6
        self.layer.cornerRadius = 10
    }
}
