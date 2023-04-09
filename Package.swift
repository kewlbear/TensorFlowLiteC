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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230408/TensorFlowLiteC.xcframework.zip", checksum: "cc824eedbf19efbfa146662c05d93043e41991b2dc52772a7696d9fb77a670ff"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230408/TensorFlowLiteCCoreML.xcframework.zip", checksum: "32075d36174ce61778f9d75f3237ee55f0566b0237a86b624322a20bb8801634"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230408/TensorFlowLiteCMetal.xcframework.zip", checksum: "dc0d443453b40483866aeaffe8a76a690ffe602eed057a4ba2427fe4a03f5680"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
