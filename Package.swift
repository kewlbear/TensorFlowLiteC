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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250413/TensorFlowLiteC.xcframework.zip", checksum: "c01f26e49d772b6d46f6d2f76c9f9ac6da60274901501946cc62381ab011ae7b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250413/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0a257571942188251fac921244c0af04b86ee242f4afc1ebcc6f54c57af93f37"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250413/TensorFlowLiteCMetal.xcframework.zip", checksum: "bc7295e9c081759e5bbfbdb33fad3a47cba2cee9fdf5416a213acf47edbc4961"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
