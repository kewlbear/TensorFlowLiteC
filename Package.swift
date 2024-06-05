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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240604/TensorFlowLiteC.xcframework.zip", checksum: "9ae2b10bb21b5525382cdb0dbbd0faf92e971dedd645dbdbb0589eec6d875c43"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240604/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c9963ab7979c192448feaa99947ef325e3a22db40df152a13cbb35cc872fad8c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240604/TensorFlowLiteCMetal.xcframework.zip", checksum: "b7b218203193c121bca4fe1c8f7184a30035d64474fc08420f3995710a674178"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
