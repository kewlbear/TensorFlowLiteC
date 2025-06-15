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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250614/TensorFlowLiteC.xcframework.zip", checksum: "7b8f6287a62e28e55118daa5312b3b1aa32338ac7a967194492f544aff966d44"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250614/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d2e440f9168a395715a3bfa9b183307e7d01a702e0ef6f95e5dc37e9dc7adcae"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250614/TensorFlowLiteCMetal.xcframework.zip", checksum: "9c4225fae6c59f745b6b522bfe5bd849f3de0454d7e67230920b3311eb743266"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
