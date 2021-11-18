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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211117/TensorFlowLiteC.xcframework.zip", checksum: "342a61db643e69330d802f23661bb23eb410fa6e97233aee51ddbe02667b7041"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211117/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7018ff109096a2c6dc55a864dd0dfff27b3c488a917317e1a3c2b51c90b73ce5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211117/TensorFlowLiteCMetal.xcframework.zip", checksum: "75c0d26ed9e65c48bd038a223f59840882680dff4e674e8241d2ff5534705164"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
