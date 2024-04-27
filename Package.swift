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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240426/TensorFlowLiteC.xcframework.zip", checksum: "a727448aac29b3c5d064b06637f6e9489e69fe824d61d6855f7fc1fbafe1a864"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240426/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d5730186bfb017e8b107b449712aaf674c97be203b4af9b72b2b667c1d1d6f4a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240426/TensorFlowLiteCMetal.xcframework.zip", checksum: "24ac97e5a7996f2d0e929df6c16df0df34bc5d6ae92511759d04c79da2ac2417"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
