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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230622/TensorFlowLiteC.xcframework.zip", checksum: "6ed4a77f747046b74c0727e7b358efa4118f2caca210b535da6047edb0001f6d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230622/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c174691c44bf086e3c3ce2ed1b40784c45b493fd0ba9dca625b68cc574542c59"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230622/TensorFlowLiteCMetal.xcframework.zip", checksum: "14041c2ff502d0f99c2ba876a17ff6fb5ac6e89371e0e0709bdbf6ed1ac3a83b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
