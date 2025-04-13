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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250412/TensorFlowLiteC.xcframework.zip", checksum: "6ea8b1c93818c34cccfc5c1a52243d08650fb07f43d1d6a411be74d7e9ab258c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250412/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6b413e433c5e0ac017f4885f12652506cf2df68d5aae3815f3b4dc0fe633b10f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250412/TensorFlowLiteCMetal.xcframework.zip", checksum: "d767eccd1ecfb8a8f02c10cb68eaa15b27440fcad3edcc8117886c6dc271dc7b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
