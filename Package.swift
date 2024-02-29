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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240228/TensorFlowLiteC.xcframework.zip", checksum: "1f3b2a88b5b043f86fab460a2ce30547abbcab988fba9acc5c0870dc4dadb162"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240228/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bd5650eec47042c3d0fb1ab7e0c6b0f8593d79070633c3d4d8222c0b3b35f2da"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240228/TensorFlowLiteCMetal.xcframework.zip", checksum: "3e48beaeac27fb40b8b640aa748c2fb401c231ad9d4cf9e83141b76b5d873829"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
