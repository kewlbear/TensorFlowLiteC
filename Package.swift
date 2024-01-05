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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240104/TensorFlowLiteC.xcframework.zip", checksum: "612f7d537faa78916f661ee286d2088276f49e38190689725bccf18a7b24cc3c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240104/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fb04a9b6be5cfabeed399181ee5fc6f01d83c9f348107fcbca80eb031d71e3c0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240104/TensorFlowLiteCMetal.xcframework.zip", checksum: "53efcb0a4da73d3fb6d6cda429fa3a8370041714f7bb1b13a1ca082196a8b57a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
