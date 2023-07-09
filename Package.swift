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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230708/TensorFlowLiteC.xcframework.zip", checksum: "8347c1f9c1e4f3783257e1d52f4d438465e9d3a4b8b811e693112a9e03b7b90d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230708/TensorFlowLiteCCoreML.xcframework.zip", checksum: "26da37c4b8ccae02aa3f980a8dcbb5dfc3a283e86e32b44a6266ca4592b89320"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230708/TensorFlowLiteCMetal.xcframework.zip", checksum: "f321b7e14b67249155039204fa7d2eb00e736d5594ad736cb96d81cfa2a6c37f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
