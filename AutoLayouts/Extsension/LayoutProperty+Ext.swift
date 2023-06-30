//
//  LayoutProperty+Ext.swift
//  AutoLayouts
//
//  Created by Icung on 01/07/23.
//

import Foundation

public extension LayoutProperty {
    func equal(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0) {
        anchor.constraint(equalTo: otherAnchor, constant: constant).isActive = true
    }
}
