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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250430/TensorFlowLiteC.xcframework.zip", checksum: "1ee081ce30ba0459d3bf0ce11e8381ae039a3fa968d30bff7d6d35862ae4c0c2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250430/TensorFlowLiteCCoreML.xcframework.zip", checksum: "50c8d67223af807d7fa776f61333a9b17f3ccf0daff05c7b111a12b4ef9f0f1c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250430/TensorFlowLiteCMetal.xcframework.zip", checksum: "823508d5e55d72511943c66886bc981cc42f78a70af31cd9520ada0889294004"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
