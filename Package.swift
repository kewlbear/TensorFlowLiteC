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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250313/TensorFlowLiteC.xcframework.zip", checksum: "4e5651baa2b59770a6e071124a0e3d12e32a088b7c67b4bf067524ebbd98874f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250313/TensorFlowLiteCCoreML.xcframework.zip", checksum: "58fdc8cefc2e30d34075ca99b3abfcc82358d9dbe5eeab551b38e659cfb64c16"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250313/TensorFlowLiteCMetal.xcframework.zip", checksum: "6461fb4e0194ad7ef34bd704fd94753e05a776293906abcbc24b02489a74d272"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
