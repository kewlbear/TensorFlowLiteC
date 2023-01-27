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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230126/TensorFlowLiteC.xcframework.zip", checksum: "00137d8183b7ae90e7998effda033730a043555a42ff1e2a8c7e03f6e179e67c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230126/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4bea3fc1c2c179d44f87cf684644205ba4dd9fb8746d8138bc19e6d589d8312e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230126/TensorFlowLiteCMetal.xcframework.zip", checksum: "ad3540a801d0787baba71d6212546b7778973e28c1d95bbbe6cf497793b31290"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
