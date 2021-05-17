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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210516/TensorFlowLiteC.xcframework.zip", checksum: "a5f3b7dbd3b619087333d607f35f85866b3715f4118fb9edb1bbc77c3451ec32"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210516/TensorFlowLiteCCoreML.xcframework.zip", checksum: "93408544b11d2f859300feff225149bb10baa716a4ae43edc9d11ecc4ed14cb8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210516/TensorFlowLiteCMetal.xcframework.zip", checksum: "53f25b8198f9ed3c2088caa9fec0db92f66d3224447e48d1b85a62e0fd85ebe0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
