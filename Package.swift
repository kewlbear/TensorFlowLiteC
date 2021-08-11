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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210810/TensorFlowLiteC.xcframework.zip", checksum: "2ee8123074bf2a95ff5f5a2132ecb5f00b7fe2493ce597d6047a2336859f5e31"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210810/TensorFlowLiteCCoreML.xcframework.zip", checksum: "64b1ca701befe56dc526dd8d482ee09d6c635735251cc8720bea3c143b8f6e44"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210810/TensorFlowLiteCMetal.xcframework.zip", checksum: "09127be69536b0d3a00599ea64884632a0311b746a6092cd043fad0299ec05d1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
