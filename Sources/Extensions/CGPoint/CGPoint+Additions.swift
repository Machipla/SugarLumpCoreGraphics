//
//  CGPoint+Additions.swift
//  GuudjobKit
//
//  Created by Mario Chinchilla on 10/4/18.
//  Copyright © 2018 PetSpot. All rights reserved.
//

import Foundation

public extension CGPoint {
    
    /// Returns a copy with the x value changed.
    public func with(x: CGFloat) -> CGPoint {
        return CGPoint(x: x, y: y)
    }
    /// Returns a copy with the y value changed.
    public func with(y: CGFloat) -> CGPoint {
        return CGPoint(x: x, y: y)
    }
    
    static func -(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        return CGPoint(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
    }
}
