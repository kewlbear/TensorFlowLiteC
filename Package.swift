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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240330/TensorFlowLiteC.xcframework.zip", checksum: "29167a38a7b851a1b1e07d05422616cd354d3915ac0439f250f5f716e829a7e5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240330/TensorFlowLiteCCoreML.xcframework.zip", checksum: "288f5665e1e3261c1fc272fd2313bcdd956b0c124a8aa5c31ed501c0b36f9113"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240330/TensorFlowLiteCMetal.xcframework.zip", checksum: "c9dd2a8c51206727a9714a0e854d50dfe5289a40e5fcf44ee4cb1ede2c99e9a0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
