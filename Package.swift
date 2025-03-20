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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250319/TensorFlowLiteC.xcframework.zip", checksum: "c8b3c32045a66c18df35e580924eb0b64e5a927790c12e7a69d6a53f0ef00f22"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250319/TensorFlowLiteCCoreML.xcframework.zip", checksum: "03516e1649d3d05e72c55a1130e97dc0fc4e8b35fd2b726dbfa1f671704e3697"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250319/TensorFlowLiteCMetal.xcframework.zip", checksum: "8573a6832429ee2fd2da5a3692e411a05d30c506a133dc87dd72eb04b97c4b2a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
