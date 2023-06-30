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

    init(view: UIView) {
        self.view = view
    }

    private func property<A: LayoutAnchor>(with anchor: A) -> LayoutProperty<A> {
        return LayoutProperty(anchor: anchor)
    }
}

public struct LayoutProperty<Anchor: LayoutAnchor> {
    let anchor: Anchor
}
