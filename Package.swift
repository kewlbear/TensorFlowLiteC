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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220930/TensorFlowLiteC.xcframework.zip", checksum: "897af9066a52c49429b6a4c923e863bd2c729cd8bb5cfb66ff8f299184fd059e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220930/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6b20439809b1b3c4793a51e5ada7655034c6d3dcbc802118d4b62f1b18a4ed54"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220930/TensorFlowLiteCMetal.xcframework.zip", checksum: "fe703f32d2e720fa4c73587b972cffe8f02a4257568419a40a7fd4781392ab9f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
