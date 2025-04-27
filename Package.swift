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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250426/TensorFlowLiteC.xcframework.zip", checksum: "619e91c126baa6722c94561e5df15eb4eb961b5410fc9752a88d458e0c5c24bb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250426/TensorFlowLiteCCoreML.xcframework.zip", checksum: "af6e930abd1158f0c3e0546e80d873ae9bb52e4fa684587bc2c4b5e0ef3fa1ba"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250426/TensorFlowLiteCMetal.xcframework.zip", checksum: "3dc4a13b31c83e9077c212bfdc48613b626422f08c4e910a4ae15befb34aea5d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
