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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221226/TensorFlowLiteC.xcframework.zip", checksum: "a3cfba2cdc9d0ac5acd4167645a2a90930c6927a01c2b0541de178187b0aa2c1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221226/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8bc037644ff1e08052e4d529bdb0c8cdd0f3fa37956413f1b704c967ec3a7d98"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221226/TensorFlowLiteCMetal.xcframework.zip", checksum: "23edcd64bd1b9bd0db39fb14f09ef1b98a166724717283ba2af64ca89cddca9b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
