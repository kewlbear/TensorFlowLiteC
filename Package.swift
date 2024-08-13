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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240812/TensorFlowLiteC.xcframework.zip", checksum: "baf2ab8197e2058da1a5f639a22efe08e8e495d8dee7fbce88c0790b4dddd9c4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240812/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cb153b6539d5338c44fa8a1492bd8462f52c82a3ab55faf66bf88fd51cee4f69"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240812/TensorFlowLiteCMetal.xcframework.zip", checksum: "83f0d296556ec031b9b8c891fbdc9046dcfb2fd43de07600d011b0c2bbcc3ff5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
