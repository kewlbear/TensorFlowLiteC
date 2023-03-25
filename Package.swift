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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230324/TensorFlowLiteC.xcframework.zip", checksum: "cccd63847e0934220497eeb61f58b721cb4ee21fc356f5d01525ee791b3b2779"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230324/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a8f6f9a831292db84dd6d7e69dbaac4fa3c5e0472c6a317fe312a13cf174ec25"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230324/TensorFlowLiteCMetal.xcframework.zip", checksum: "12515b4ae955feb3231ddcfcd4b9c15d6febc5d17e1b430236f0248c80cc27a4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
