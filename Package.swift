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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210901/TensorFlowLiteC.xcframework.zip", checksum: "799a58549fbb9779d838b04c76abdb70983bfbfa335e6b54202c45ec14c44b10"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210901/TensorFlowLiteCCoreML.xcframework.zip", checksum: "196b110ddf6da095cd5fbe0cf763d05d90a12f4cb77b7afeb852c5212659e2fb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210901/TensorFlowLiteCMetal.xcframework.zip", checksum: "297ac15083c5e5608ffe7579ffcc9074863f6182785ddc8155589d3d81fcb4ee"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
