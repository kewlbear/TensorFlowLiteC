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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241201/TensorFlowLiteC.xcframework.zip", checksum: "c3a868add94b99e746396feecfe249f9c1eed81dab91b870404bb4a66116cd16"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241201/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9d3a9af1db60de630142f80d3e43fa6cedd8ea385f8653d4ed6d0db9ba9df930"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241201/TensorFlowLiteCMetal.xcframework.zip", checksum: "463b60b8faf5dbccaf48f4af8bb48644321f630317c69d9847b2b69cbff2d3d8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
