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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231230/TensorFlowLiteC.xcframework.zip", checksum: "90a9c1a0381153405b2710c315ed6fc3fcb9d9bfb538a91ada363a1d5c9b77b5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231230/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8957349ee7b0426889618a5be224a0d1ae694ecc01af3f9217938379ea5589af"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231230/TensorFlowLiteCMetal.xcframework.zip", checksum: "a1e81cac011c46d8596dbf2a0c0167f014905b842d16158423d5d1be715415ba"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
