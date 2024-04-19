// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "TensorFlowLiteCMetal",
                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240418/TensorFlowLiteC.xcframework.zip", checksum: "e415ab974e39bb9c15f069d2e69263fc6880553adcbf9e2e456cc21c116e750c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240418/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d97270c04607ed9477800b4d4515574a7c69ddd7a09dc15e6068817559cdc2b0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240418/TensorFlowLiteCMetal.xcframework.zip", checksum: "eec081cc18d9f090002cc6bba61594230535029c986783920aad8a331ffa10ae"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
