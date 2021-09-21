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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210920/TensorFlowLiteC.xcframework.zip", checksum: "c6bdbe3ab382e9b85375c6c34b0caad9db6bce85b9e9005f613f3fb0e13e321f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210920/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2d3d62ab616717a7109f1b1fad535bf5858a1c9fc01938079f8f675c81135815"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210920/TensorFlowLiteCMetal.xcframework.zip", checksum: "e2c747731ffdfa5b334eacc48a3c747ecfa01bab36548716c866475cc64a2280"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
