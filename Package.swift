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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230718/TensorFlowLiteC.xcframework.zip", checksum: "fd378c1d3c209d42a367e329e7dc2d47c078b8f8a8567b72511e089d321364d1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230718/TensorFlowLiteCCoreML.xcframework.zip", checksum: "57392cf591170adf298a38f6df796a1819af6f1538e0fefd0630bef8ee30f0ad"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230718/TensorFlowLiteCMetal.xcframework.zip", checksum: "5e621105af9941cae1d8ff0c2464a2ca6d0eaf23ee598eb84492737026ad3de8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
