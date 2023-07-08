//
//  LayoutDelegate.swift
//  AutoLayouts
//
//  Created by Icung on 01/07/23.
//

import Foundation
import UIKit

public class LayoutDelegate {
    private let view: UIView
    
    public lazy var topAnchor = property(with: view.topAnchor)
    public lazy var bottomAnchor = property(with: view.bottomAnchor)
    public lazy var leftAnchor = property(with: view.leftAnchor)
    public lazy var rightAnchor = property(with: view.rightAnchor)
    public lazy var leadingAnchor = property(with: view.leadingAnchor)
    public lazy var trailingAnchor = property(with: view.trailingAnchor)
    public lazy var centerYAnchor = property(with: view.centerYAnchor)
    public lazy var centerXAnchor = property(with: view.centerXAnchor)
    public lazy var widthAnchor = property(with: view.widthAnchor)
    public lazy var heightAnchor = property(with: view.heightAnchor)

    init(view: UIView) {
        self.view = view
    }

    private func property<A: LayoutAnchor>(with anchor: A) -> LayoutProperty<A> {
        return LayoutProperty(anchor: anchor)
    }
}

public extension UIView {
    internal func prepareViewLayout() {
        guard self.translatesAutoresizingMaskIntoConstraints else { return }
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setWidth(by width: CGFloat) {
        prepareViewLayout()
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    
    func setHeight(by height: CGFloat) {
        prepareViewLayout()
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    
    func setWidth(_ width: CGFloat, andHeight: CGFloat) {
        prepareViewLayout()
        setWidth(by: width)
        setHeight(by: andHeight)
    }
}

public struct LayoutProperty<Anchor: LayoutAnchor> {
    let anchor: Anchor
}
