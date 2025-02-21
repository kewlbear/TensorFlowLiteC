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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250220/TensorFlowLiteC.xcframework.zip", checksum: "c7617500095c71735dc6968bb03c03e684d3c16783b477d890f9d4d5ecc6467f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250220/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9016dfa420b7b9ea7cabd4103af75791e6c356d1a38741e1bcf4399ef53dd5dc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250220/TensorFlowLiteCMetal.xcframework.zip", checksum: "a4a92cfb840c2a71de3aa44f18ddc5bfa8b4cce9735d941b0228dbcfdbe13b1b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
