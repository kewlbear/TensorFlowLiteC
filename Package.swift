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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221205/TensorFlowLiteC.xcframework.zip", checksum: "64d98199a5c0c8767d4e0b942add45059254223bf7ceed788dd79a9778a05543"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221205/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e1f85b4455124f15700c47090ed98e22c1c0b7a8a292f5bfad8b2766602aa70d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221205/TensorFlowLiteCMetal.xcframework.zip", checksum: "3aa1ba38b949552b3ccac4b4cb77c16b39d0d1ecd39feba16ce6a425bc6d822e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
