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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230926/TensorFlowLiteC.xcframework.zip", checksum: "95f40f460141e96c24aed25410a7f3ffc984b9560e7846a3f4a49efb9a34406b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230926/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9c0cda370db460ffbfc4fd24bdeec07575e5f61cf9b914a77d07a699e9ffba96"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230926/TensorFlowLiteCMetal.xcframework.zip", checksum: "58fbab73551f6c3968c371db71464630e38bc19459857d3adf555b68d37c8374"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
