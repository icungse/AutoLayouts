# AutoLayouts
<img src="https://img.shields.io/badge/platforms-iOS%20-333333.svg" alt="Supported Platforms: iOS, macOS, tvOS, watchOS & Linux" />
<a href="https://cocoapods.org/pods/AutoLayouts" alt="AutoLayouts on CocoaPods" title="AutoLayouts on CocoaPods"><img src="https://img.shields.io/cocoapods/v/AutoLayouts.svg" /></a>

![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)


</p>

A simple helper for constraints management in UIKit. 

## Installation 

AutoLayouts is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
    pod 'AutoLayouts'
```

## Usage

- Init View

    Simply init the view and add sub view to parent with `with(parent: <UIVIew>)`

    ```swift
    lazy var subView = UIView().withParent(parentView)
    ```

- Add constraint

  Just add use `makeConstraint(using: <#T##(LayoutDelegate) -> Void#>)` and fill the closure with LayoutDelegate

    ```swift
    subView.makeConstraint { constraint in
        constraint.leadingAnchor == parentView.leadingAnchor + 8
        constraint.topAnchor == parentView.topAnchor + 8
        constraint.trailingAnchor == parentView.trailingAnchor - 8
        constraint.bottomAnchor == parentView.bottomAnchor - 8
    }
    ```

- Set Height
    
    Use `setWidth(by width: CGFloat)` in extension of UIView to set view height
    ```swift
    yourView.setWidth(by width: CGFloat)
    ```
- Set Width

    Use `setHeight(by height: CGFloat)` in extension of UIView to set view height
    ```swift
    youtView.setHeight(by height: CGFloat)
    ```
- Set Witdh and Height
    Use `setWidth(_ width: CGFloat, andHeight: CGFloat)` in extension of UIView to set view height
    ```swift
    yourView.setWidth(_ width: CGFloat, andHeight: CGFloat)
    ```

## LayoutDelegate
Availability of Layout delegate property:
- topAnchor
- bottomAnchor
- leftAnchor
- rightAnchor
- leadingAnchor
- trailingAnchor
- centerYAnchor
- centerXAnchor
- widthAnchor
- heightAnchor

