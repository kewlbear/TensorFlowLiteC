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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250330/TensorFlowLiteC.xcframework.zip", checksum: "402a08459ded3252e8c029d5f4620dffab6c05defc1c012515af31ddd3fa4956"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250330/TensorFlowLiteCCoreML.xcframework.zip", checksum: "348fe026f3b8a1467a40f980d6aeb06d9dd626d3035813d4febdc654a7faffe1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250330/TensorFlowLiteCMetal.xcframework.zip", checksum: "122f01e978c6c0ab32635c18c01c79cba5c8e80262ab3965dbbc700211840a4b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
