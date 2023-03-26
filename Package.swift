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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230325/TensorFlowLiteC.xcframework.zip", checksum: "25fb44d03eeb71dd20fe1274af5387ae39c8bf8adb69bc29879cc4009cbb34a3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230325/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cba382f30de8d1d28b873a5d9d3c56154c38b4f9702052c7fe2318a5eb18096b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230325/TensorFlowLiteCMetal.xcframework.zip", checksum: "9a516b35541f4791635434514c3ee76e7c71ed94819c5ad4ff685d9838e86665"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
