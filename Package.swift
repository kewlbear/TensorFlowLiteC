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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250211/TensorFlowLiteC.xcframework.zip", checksum: "9d99e5dc7a0ef586c09d7a48e0374ad34b05e6e99055694e53a40dadb36765d1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250211/TensorFlowLiteCCoreML.xcframework.zip", checksum: "81e91634a8b9bc91e0732698585e025d324fd7eae7e9346f6c194fce125b9950"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250211/TensorFlowLiteCMetal.xcframework.zip", checksum: "4f5f991e3738711af9c2e93734f7f16d05de1e9ea9af1dc50c1a40e07c96e7ff"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
