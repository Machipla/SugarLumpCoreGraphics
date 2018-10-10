//
//  CGRect+Additions.swift
//  SugarLumpCoreGraphics
//
//  Created by Mario Chinchilla on 10/10/18.
//  
//

import Foundation

public extension CGRect {
    public struct Insets{
        public let dx:Float
        public let dy:Float
        
        public static let zero = Insets(dx: 0, dy: 0)
        
        public init(dx:Float = 0, dy:Float = 0){
            self.dx = dx
            self.dy = dy
        }
    }
    
    public struct Offsets{
        public let dx:Float
        public let dy:Float
        
        public static let zero = Offsets(dx: 0, dy: 0)
        
        public init(dx:Float = 0, dy:Float = 0){
            self.dx = dx
            self.dy = dy
        }
    }
    
    public var x: CGFloat {
        get {return origin.x}
        set {origin.x = newValue}
    }
    
    public var y: CGFloat {
        get {return origin.y}
        set {origin.y = newValue}
    }
    
    public var centerX: CGFloat {
        get {return x + width * 0.5}
        set {x = newValue - width * 0.5}
    }
    
    public var centerY: CGFloat {
        get {return y + height * 0.5}
        set {y = newValue - height * 0.5}
    }
    
    public var left: CGFloat {
        get {return origin.x}
        set {origin.x = newValue}
    }
    
    public var right: CGFloat {
        get {return x + width}
        set {x = newValue - width}
    }
    
    #if os(iOS)
    public var top: CGFloat {
    get {return y}
    set {y = newValue}
    }
    
    public var bottom: CGFloat {
    get {return y + height}
    set {y = newValue - height}
    }
    
    #else
    
    public var top: CGFloat {
        get {return y + height}
        set {y = newValue - height}
    }
    
    public var bottom: CGFloat {
        get {return y}
        set {y = newValue}
    }
    #endif
    
    public var topLeft: CGPoint {
        get {return CGPoint(x: left, y: top)}
        set {left = newValue.x; top = newValue.y}
    }
    
    public var topCenter: CGPoint {
        get {return CGPoint(x: centerX, y: top)}
        set {centerX = newValue.x; top = newValue.y}
    }
    
    public var topRight: CGPoint {
        get {return CGPoint(x: right, y: top)}
        set {right = newValue.x; top = newValue.y}
    }
    
    public var centerLeft: CGPoint {
        get {return CGPoint(x: left, y: centerY)}
        set {left = newValue.x; centerY = newValue.y}
    }
    
    public var center: CGPoint {
        get {return CGPoint(x: centerX, y: centerY)}
        set {centerX = newValue.x; centerY = newValue.y}
    }

    public var centerRight: CGPoint {
        get {return CGPoint(x: right, y: centerY)}
        set {right = newValue.x; centerY = newValue.y}
    }

    public var bottomLeft: CGPoint {
        get {return CGPoint(x: left, y: bottom)}
        set {left = newValue.x; bottom = newValue.y}
    }

    public var bottomCenter: CGPoint {
        get {return CGPoint(x: centerX, y: bottom)}
        set {centerX = newValue.x; bottom = newValue.y}
    }

    public var bottomRight: CGPoint {
        get {return CGPoint(x: right, y: bottom)}
        set {right = newValue.x; bottom = newValue.y}
    }
    
    public mutating func inset(by insets:CGRect.Insets){
        self = insetBy(dx: CGFloat(insets.dx), dy: CGFloat(insets.dy))
    }
    
    public func insetting(by insets:CGRect.Insets) -> CGRect{
        var modifiedRect = self
        modifiedRect.inset(by: insets)
        return modifiedRect
    }
    
    public mutating func offset(by offsets:CGRect.Offsets){
        offsetBy(dx: CGFloat(offsets.dx), dy: CGFloat(offsets.dy))
    }
    
    public func offsetting(by offsets:CGRect.Offsets) -> CGRect{
        var modifiedRect = self
        modifiedRect.offset(by: offsets)
        return modifiedRect
    }
}
