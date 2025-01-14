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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250113/TensorFlowLiteC.xcframework.zip", checksum: "420d1cc58a2b730f23814ead7d01a6445747d970bdac80b1dc85d0e6c787a3fc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250113/TensorFlowLiteCCoreML.xcframework.zip", checksum: "46c31fe9b69064880f9d7a3aa7392aa453c909ed90cd4c7bfc5ee547da3cda14"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250113/TensorFlowLiteCMetal.xcframework.zip", checksum: "eae88a68cb9ed89a2e7d954d0ed5b42022051c41290b27b30f417a5da9eede39"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
