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
    
    func makeConstraint(using closure: (LayoutDelegate) -> Void) {
        translatesAutoresizingMaskIntoConstraints = false
        closure(LayoutDelegate(view: self))
    }
}

/// DSL operator to add constant to anchor
/// - Returns: Given anchor and constant
public func +<A: LayoutAnchor>(lhs: A, rhs: CGFloat) -> (A, CGFloat) {
    return (lhs, rhs)
}

/// DSL operator to subtract constant to anchor
/// - Returns: Given anchor and minus constant
public func -<A: LayoutAnchor>(lhs: A, rhs: CGFloat) -> (A, CGFloat) {
    return (lhs, -rhs)
}

/// DSL operator to matching anchor by  equal with given constant: CGFloat
public func ==<A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: (A, CGFloat)) {
    lhs.equal(to: rhs.0, offsetBy: rhs.1)
}


/// DSL operator to matching anchor by  equal
public func ==<A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: A) {
    lhs.equal(to: rhs)
}
