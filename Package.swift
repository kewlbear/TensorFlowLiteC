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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240709/TensorFlowLiteC.xcframework.zip", checksum: "36821f8305c08f35c7da89ad6d3fc4ed941b4cd4d5d6d41bc1c1bee2ee0d2c34"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240709/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dcb67f9da84dc49714eefe4c1a10b5ecf6702adb5370064b6579bfa141a1bb9b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240709/TensorFlowLiteCMetal.xcframework.zip", checksum: "50b885bac598834ec22341f2d247ec3afc288fc8573e35215dca65ce684516e6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
