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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250505/TensorFlowLiteC.xcframework.zip", checksum: "6f3b0b7bb657f6a75e09ed2aadaf68e9d566345a4f440911e64a560834b42a1b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250505/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f033138c59aa206583bdc58ef65f2f2f7358a59d99bc834f54ee971b614aee36"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250505/TensorFlowLiteCMetal.xcframework.zip", checksum: "15b2cb6e01cc6305b0e7e25db423c5edced019915f6fb5b0659470f030f2519e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
