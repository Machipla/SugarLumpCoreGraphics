//
//  CGSize+Additions.swift
//  SugarLumpCoreGraphics
//
//  Created by Mario Chinchilla on 10/10/18.
//
//

import Foundation

public extension CGSize {
    
    public func with(width: CGFloat) -> CGSize {
        return CGSize(width: width, height: height)
    }
    
    public func with(height: CGFloat) -> CGSize {
        return CGSize(width: width, height: height)
    }
    
    /// Resizes the size to the specified amount where 0 is 0 percent and 1 is 100 percent
    ///
    /// - Parameter percentage: Pass 0 to a 0 percent resize, 1 for 100 percent resize and so on
    /// - Returns: The resized size
    public func by(percentage:Float) -> CGSize{
        let castedPercentage = CGFloat(percentage)
        return CGSize(width: width*castedPercentage, height: height*castedPercentage)
    }
    
    static func -(lhs:CGSize, rhs:CGSize) -> CGSize{
        return CGSize(width: lhs.width - rhs.width, height: lhs.height - rhs.height)
    }
}
