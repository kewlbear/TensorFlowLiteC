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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240111/TensorFlowLiteC.xcframework.zip", checksum: "37bb1ddfc2511fcab47370d51d031ff303f52373c4f41a70e97f7360123fc025"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240111/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ab477310c126d50e41ec5b986c45383bde40ffbf79bd0a94c9be52bc4ac52d8b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240111/TensorFlowLiteCMetal.xcframework.zip", checksum: "492699af22669e3a5173722542856a0cb8eda45c8b33e9ca9b1f573afbf26908"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
