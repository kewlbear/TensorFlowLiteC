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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210713/TensorFlowLiteC.xcframework.zip", checksum: "146c79c03ae845bd0855b084f95fb1ccf789e5e92343fc571dc45055547880d3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210713/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2e902c57787b3706e89c3187d841e79f875e87ec6911f0c85d71e558421dd9f8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210713/TensorFlowLiteCMetal.xcframework.zip", checksum: "f6f56dba3c0b388265f7a0c896a2c71b0f275f94779651204c2e87b913ccf4c4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
