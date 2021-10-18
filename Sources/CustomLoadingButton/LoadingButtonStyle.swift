

import SwiftUI

public struct LoadingButtonStyle {
    
    public init(width: CGFloat? = nil,
                height: CGFloat? = nil,
                cornerRadius: CGFloat? = nil,
                backgroundColor: Color? = nil,
                loadingColor: Color? = nil,
                strokeWidth: CGFloat? = nil,
                strokeColor: Color? = nil,
                progressType: ProgressType? = nil) {
        self.width = width ?? .infinity
        self.height = height ?? 54
        self.cornerRadius = cornerRadius ?? 0
        self.backgroundColor = backgroundColor ?? Color.blue
        self.loadingBackgroundColor = loadingColor ?? self.backgroundColor.opacity(0.6)
        self.strokeWidth = strokeWidth ?? 5
        self.strokeColor = strokeColor ?? Color.gray.opacity(0.6)
        self.progresType = progressType ?? ProgressType.circleProgress
    }
    
    
    /// progress type
    var progresType: ProgressType =  ProgressType.circleProgress
    /// Width of button
    public var width: CGFloat = .infinity
    /// Height of button
    public var height: CGFloat = 54
    /// Corner radius of button
    public var cornerRadius: CGFloat = 0
    /// Background color of button
    public var backgroundColor: Color = .blue
    /// Background color of button when loading. 50% opacity of background color gonna be set if blank.
    public var loadingBackgroundColor: Color = Color.blue.opacity(0.5)
    /// Width of circle loading bar stroke
    public var strokeWidth: CGFloat = 5
    /// Color of circle loading bar stroke
    public var strokeColor: Color = Color.gray.opacity(0.6)
    
    
}
