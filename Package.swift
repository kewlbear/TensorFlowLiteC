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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240914/TensorFlowLiteC.xcframework.zip", checksum: "d92757d02c92dc6a0bd8c8d9ca6045ec460ea464ec61fd4e1b183de81deb70c7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240914/TensorFlowLiteCCoreML.xcframework.zip", checksum: "52d9e64115197f89837bf4932280234c5e47bba24740fcfa19cf3e37cf766523"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240914/TensorFlowLiteCMetal.xcframework.zip", checksum: "e8acd37f8c7a4e97e488288139fa8da353cb1ddb6b2533af6db1651dfe2d8932"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
