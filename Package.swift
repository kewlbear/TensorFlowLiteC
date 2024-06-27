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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240626/TensorFlowLiteC.xcframework.zip", checksum: "3b527a7be16aa02f0900deb40d1561df839fdce96cf2d1aaa80388b5c28e2ac3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240626/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dbb7549432c384a7af04f3654c46f3dc5ed4d393fe565bf05dff03f64b1fee1b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240626/TensorFlowLiteCMetal.xcframework.zip", checksum: "2ca7e0f5ba780897b0b4819c7e798d59f8c134dc08d739d5c6f52a5e4d1985d5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
