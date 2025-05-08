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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250507/TensorFlowLiteC.xcframework.zip", checksum: "00c3663376e914fe98643625b49f78b79f2a3a39b2f98d71a0c11f2b7e610f4a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250507/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d148306eea625e3fce192845977cc87f155d540d4337e07d4cf04ac814f90d39"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250507/TensorFlowLiteCMetal.xcframework.zip", checksum: "cb90ed1c8abb80d1291d1a03c31782ccb7eace586fc60d09415214be02ff92c5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
