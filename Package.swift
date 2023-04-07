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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230406/TensorFlowLiteC.xcframework.zip", checksum: "04be13d3a884059d205c3b05f416277fdcc8b5f733a07609bcb5ba3072643621"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230406/TensorFlowLiteCCoreML.xcframework.zip", checksum: "60ddfd59c45d6575b536cfbb1110e4b1589f2924e8d881746318936ecd4c942c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230406/TensorFlowLiteCMetal.xcframework.zip", checksum: "d187c19470b666775c85bb13e2cf32ef352dcf3658fc81464ef266a0aa32d46a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
