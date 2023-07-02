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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230701/TensorFlowLiteC.xcframework.zip", checksum: "3ebde7ed3120215590ceac6fcfba6313eaa2b8dcb80d7da70d299f93d02778a6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230701/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6b83a4625c53b291bf50a531c02246681855cd5988ffc51d7c6c1ddb6add8316"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230701/TensorFlowLiteCMetal.xcframework.zip", checksum: "7d0f5c8e13a7d969c9f264b1bf7139f3fc0f53a8089bf00b4340c0a1b0a475a6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
