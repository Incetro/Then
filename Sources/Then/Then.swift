//
//  Then.swift
//  TheRun
//
//  Created by incetro on 18/12/2019.
//  Copyright © 2019 Incetro Inc. All rights reserved.
//
// swiftlint:disable extension_access_modifier

#if os(iOS) || os(tvOS)
import UIKit.UIGeometry
#endif

#if !os(Linux)
import CoreGraphics
#endif

// MARK: - Then

public protocol Then {
}

// MARK: - Any

extension Then where Self: Any {

    /// Use it to set properties with closures
    /// just after initializing and copying the value types
    ///
    ///     let frame = CGRect().with {
    ///         $0.origin.x = 13
    ///         $0.size.width = 113
    ///     }
    public func with(_ block: (inout Self) throws -> Void) rethrows -> Self {
        var copy = self
        try block(&copy)
        return copy
    }

    /// Use it to execute something with closures
    ///
    ///     UserDefaults.standard.do {
    ///         $0.set(username, forKey: .username)
    ///         $0.set(email, forKey: .email)
    ///         $0.synchronize()
    ///     }
    public func `do`(_ block: (Self) throws -> Void) rethrows {
        try block(self)
    }

}

// MARK: - AnyObject

extension Then where Self: AnyObject {

    /// Use it to set properties with closures just after initializing
    ///
    ///     let titleLabel = UILabel().then {
    ///         $0.textAlignment = .center
    ///         $0.adjustsFontSizeToFitWidth = true
    ///         $0.transform = CGAffineTransform(rotationAngle: -.pi / 6)
    ///     }
    ///
    public func then(_ block: (Self) throws -> Void) rethrows -> Self {
        try block(self)
        return self
    }
}

// MARK: - Default

extension NSObject: Then {
}

extension Array: Then {
}

extension Dictionary: Then {
}

extension Set: Then {
}

// MARK: - iOS + tvOS

#if os(iOS) || os(tvOS)

extension UIEdgeInsets: Then {
}

extension UIOffset: Then {
}

extension UIRectEdge: Then {
}

#endif

// MARK: - CoreCraphics

#if !os(Linux)

extension CGPoint: Then {
}

extension CGRect: Then {
}

extension CGSize: Then {
}

extension CGVector: Then {
}

#endif
