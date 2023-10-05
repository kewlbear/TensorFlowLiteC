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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231004/TensorFlowLiteC.xcframework.zip", checksum: "e2f2803f221d92170a0fd47d364824f3454a15b0b94b3ee4d0ed3640b0c4c007"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231004/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c82d337c23badd9847e83e93f4fb53cc82d8a331723afc62283793baf41c8ee4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231004/TensorFlowLiteCMetal.xcframework.zip", checksum: "a776039e4030fe6aba27b60d56a359267d7f6e834d7797e6fcf331078d510a8e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
