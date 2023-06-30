//
//  LayoutAnchor.swift
//  AutoLayouts
//
//  Created by Icung on 01/07/23.
//

import UIKit

public protocol LayoutAnchor {
    func constraint(equalTo anchor: Self, constant: CGFloat) -> NSLayoutConstraint
}
