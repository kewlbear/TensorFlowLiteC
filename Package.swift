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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250223/TensorFlowLiteC.xcframework.zip", checksum: "41b53cba5a7fd78b8f17ba9d2d457fa800e5228fa6dcc4a36dff7e98d3577b68"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250223/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b009b2411368664266daf8df9de0fc2199c0c4fb716294401ff37c4da65296af"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250223/TensorFlowLiteCMetal.xcframework.zip", checksum: "c8b9c1c35a1b27ce3158ec4d4c9d8de0ee146c6ebeca19a6cfcafeee2cac40c0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
