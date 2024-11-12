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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241111/TensorFlowLiteC.xcframework.zip", checksum: "7d10ded09182cd7be31a5d813229aab8432cb39363dc6187759d79b84ba8dec1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241111/TensorFlowLiteCCoreML.xcframework.zip", checksum: "31d95ab7340006bebd150e12265f554e8f0256e4ffd16c3ad1caf9918206e41e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241111/TensorFlowLiteCMetal.xcframework.zip", checksum: "e179c8c220c10607e0d5ed2b297dac1a561642fe350a03cd8d1ebd3c638ff12f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
