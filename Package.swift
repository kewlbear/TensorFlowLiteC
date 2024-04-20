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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240419/TensorFlowLiteC.xcframework.zip", checksum: "0d9bedc82c6ca0cbbf445427da664d9584f4316721ca0eab7bb719f8fa9479af"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240419/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3e4fda91c7a89349a67dc92730d7a47b68a013a0b5dcf03a3873d27aba0d50e5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240419/TensorFlowLiteCMetal.xcframework.zip", checksum: "6979ca3f6031a175a7cd68dee8d69aa1ddba99df51db9a1cc55a750cc9940066"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
