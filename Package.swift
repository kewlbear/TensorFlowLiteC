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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221110/TensorFlowLiteC.xcframework.zip", checksum: "b4fad2c3c971a2396b287237f00e5d28e3e7b242c56b7a2361d1ba7a17e54ef6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221110/TensorFlowLiteCCoreML.xcframework.zip", checksum: "36e27c774465ab8ee78e7a3bd5a401a32a9a0c794851dfdd513c510ae83d50f5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221110/TensorFlowLiteCMetal.xcframework.zip", checksum: "5f896878b43e2e138bcf3b032871fda36c9f78ff70b22a7126c4cb82b230bb1f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
