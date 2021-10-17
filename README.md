# CustomLoadingButton

Simple Custom Loading Progress Button for SwiftUI
Version 1.0.0

# This version requires 
Xcode 11+
SwiftUI
iOS 13+
macOS 10.15+

# Installaion


File ➜ Swift Packages ➜ Add Package Dependancy..

Swift Package Manager
Add CustomLoadingButton as dependency in your Package.swift


import CustomLoadingButton

```
let package = Package(
    name: "YourPackage",
    dependencies: [
        .Package(url: "https://github.com/tariqul000/CustomLoadingButton.git", majorVersion: 0),
    ]
)
```


Add style with progress persentage 
var style = LoadingButtonStyle(width: 312,
                                height: 54,
                                cornerRadius: 27,
                                backgroundColor: .gray,
                                loadingColor: Color.orange.opacity(0.5),
                                strokeWidth: 5,
                                strokeColor: .orange,
                                progressType: ProgressType.persentageProgress)
                                
                                

Button calling 
            LoadingButton(action: {
               // Your Action here
            }, isLoading: $isLoading,progress: $progressValue, style: style) {
                     HStack{
                     Image(systemName: "clear.fill").foregroundColor(Color.white)
                     Text("LoadingButton").foregroundColor(Color.white)
                     }
             }

# Contribute
I would love you for the contribution to CustomLoadingButton, check the LICENSE file for more info.

# Meta
Distributed under the MIT license. See LICENSE for more information.

# Inspired
Spinner animations inspired from LoadingButton
