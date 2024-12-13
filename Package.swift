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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241212/TensorFlowLiteC.xcframework.zip", checksum: "4b002f5cfc40f78e7d3506130dfada8baa564b509a9550632547b98d58d5279e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241212/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f8b5f291dd705fcb4dab87f82c8c5e0f6af965c9a40cd13e900f6113ec37c623"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241212/TensorFlowLiteCMetal.xcframework.zip", checksum: "8162e53293ac247cef715c923ae0baf8b1725ddcb198004f86acd355178d939e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
