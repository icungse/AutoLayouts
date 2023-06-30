//
//  UIView+Ext.swift
//  AutoLayouts
//
//  Created by Icung on 01/07/23.
//

import UIKit

public extension UIView {
    @discardableResult
    func with(parent: UIView) -> Self {
        parent.addSubview(self)
        return self
    }
}
