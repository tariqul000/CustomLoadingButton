//
//  SwiftUIView.swift
//
//
//  Created by Md Tariqul Islam on 14/10/21.
//
import SwiftUI


public enum ProgressType {
    case persentageProgress, circleProgress
}

public struct CustomLoadingButton<Content: View>: View{
    @Binding var isLoading: Bool
    @Binding var progress: Float
    var style: LoadingButtonStyle
    
    let content: Content
    var action: () -> () = {}
    
    public init(action: @escaping () -> Void, isLoading: Binding<Bool>,progress: Binding<Float>? = nil , style: LoadingButtonStyle? = nil, @ViewBuilder builder: () -> Content) {
        self._isLoading = isLoading
        self._progress = progress ?? .constant(Float(0))
        self.style = style ?? LoadingButtonStyle()
        content = builder()
        self.action = action
    }
    
    public var body: some View {
        Button(action: {
            if !isLoading {
                action()
            }
           // isLoading = true
        }) {
            ZStack {
                Rectangle()
                    .fill(isLoading ? style.loadingBackgroundColor : style.backgroundColor)
                    .frame(width: isLoading ? style.height : style.width, height: style.height)
                    .cornerRadius(isLoading ? style.height/2 : style.cornerRadius)
                    .animation(.easeInOut)
                if isLoading {
            
                    if style.progresType == ProgressType.persentageProgress {
                        CirclePersntageProgressBar(style: style, progress: $progress)
                    }
                    
                    if style.progresType == ProgressType.circleProgress{
                        CircleLoadingBar(style: style)
                    }
                }
                else {
                    VStack {
                        content.animation(.easeInOut)
                    }
                }
            }
        }.frame(width: style.width, height: style.height)
    
    }
}

