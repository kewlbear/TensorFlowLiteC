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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240315/TensorFlowLiteC.xcframework.zip", checksum: "3e4cad8408d2e8fa5b5be07e11c8f795ef423e5a569830006ecc8016220ceaa4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240315/TensorFlowLiteCCoreML.xcframework.zip", checksum: "79bf195238c80ed154b5b6767d5ccd21c2fa39849745b512abac510da0c5bdbe"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240315/TensorFlowLiteCMetal.xcframework.zip", checksum: "9c4f89c308e88f48c0cdef897c0ecea390ce41d9e436216a9e08a12f0b12d129"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
