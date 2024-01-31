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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240130/TensorFlowLiteC.xcframework.zip", checksum: "0adf2302fc16e27f1fdc0931e2e2134bb9859db7b8651d8c277ebdaa5a9fe5cb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240130/TensorFlowLiteCCoreML.xcframework.zip", checksum: "80d779e694842407e7625edcc20e8dfc6140e69575c6fce41e9f6749b5f03d43"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240130/TensorFlowLiteCMetal.xcframework.zip", checksum: "85524dd419db613d471d28399303cc2d466125e0736dd8e610dad34058bcf2ce"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
