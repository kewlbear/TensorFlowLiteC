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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250416/TensorFlowLiteC.xcframework.zip", checksum: "9c29f832062d553df9fc63a1766f0faae56c696ebfeb6ddf669f212823527955"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250416/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fd30505179f9113defd982793a4e58aa518f6550bbbeee79040dcd817b3a82c2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250416/TensorFlowLiteCMetal.xcframework.zip", checksum: "876fe904585583cf7324dfa08decbcb92eb0452dfcac65a93f6e2aa4f311ebf0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
