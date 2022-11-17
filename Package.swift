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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221116/TensorFlowLiteC.xcframework.zip", checksum: "627e2026102764d0a3b721772ef9eeede359c7854fb04ee2473030f8409f1dee"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221116/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6c7c87a42163595919d6c72e448108bcccba19062a6f42199c6455723d62f72f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221116/TensorFlowLiteCMetal.xcframework.zip", checksum: "6325406712d71229cf4f127a88af1cc0541aca06d43046875261560bc56d5b72"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
