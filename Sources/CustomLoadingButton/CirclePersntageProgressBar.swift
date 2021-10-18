//
//  SwiftUIView.swift
//  
//
//  Created by Md Tariqul Islam on 17/10/21.
//

import SwiftUI

struct CirclePersntageProgressBar: View {
    @State private var isLoading = false
    @State var style: LoadingButtonStyle
    @Binding var progress: Float

    var body: some View {
        ZStack {
                Circle()
                    .stroke(lineWidth: style.strokeWidth)
                    .foregroundColor(style.strokeColor)
                
                Circle()
                    .trim(from: 0, to: 0.3)
                    .stroke(style: StrokeStyle(lineWidth: style.strokeWidth, lineCap: .round, lineJoin: .bevel))
                    .foregroundColor(.red)
                    .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                    .animation(Animation.default.repeatForever(autoreverses: false))
            
                Text(String(format: "%.0f %%", min(Double(self.progress), 1.0)*100.0))
                    .font(.system(size: 12))
                    .bold()

        }.onAppear(){
            self.isLoading = true
        }
    }
}


