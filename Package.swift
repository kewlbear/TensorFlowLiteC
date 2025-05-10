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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250509/TensorFlowLiteC.xcframework.zip", checksum: "3a411d3856c248eb9dde47d1b47ab7ac9105292f3e58a869c45039fcad6be7ee"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250509/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1af2508a65283eefc4cb1a7fdb4a7a2aca4a67aa02d77743be7fb60d290b1eba"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250509/TensorFlowLiteCMetal.xcframework.zip", checksum: "0c6cbcf841396204063f404d4398777f494d1b0e99c8f5af3a3365e037d57c86"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
