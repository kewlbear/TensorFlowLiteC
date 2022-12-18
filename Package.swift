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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221217/TensorFlowLiteC.xcframework.zip", checksum: "77840047d7b3bf56df351f012c09542fc287e0a4fbf4aa36c48522543b5ed0b8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221217/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a663e8a7f36914335ffd61413b5351dc2c34b75988226f6e30a89f09518a5179"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221217/TensorFlowLiteCMetal.xcframework.zip", checksum: "4bf25e1168ead3c366d2221b92002aeb20c58024ace49f371c4a662e4510226c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
