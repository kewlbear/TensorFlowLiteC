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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230217/TensorFlowLiteC.xcframework.zip", checksum: "669d301ac5ee25eb09c035268181b50421a98a811b596f5bb3b718e768a964ab"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230217/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6518359285dfe1b26f39608e0a3d6469e3b2739d9911e6002d18b0ab6b3dd680"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230217/TensorFlowLiteCMetal.xcframework.zip", checksum: "cd384d50dcc4d0ebf49db71c8585ac302ac06a22c6a116c8e28358d9cac02360"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
