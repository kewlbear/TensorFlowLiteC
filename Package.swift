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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221007/TensorFlowLiteC.xcframework.zip", checksum: "8dda91502f3068a27bcabf3c57928286b47d23eee7694d6a34b9b1767d9856d4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221007/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e01be9cf8e541ed750a4539820a3d7e0e38c7e11ec6408fc6fcf2633d9a3a155"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221007/TensorFlowLiteCMetal.xcframework.zip", checksum: "c8c32609bf59bcf1d745f07a9490c663df53eadcafcb80352ec8150a947ccc99"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
