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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250222/TensorFlowLiteC.xcframework.zip", checksum: "f439cb880ad19d5deac13ff9b6c7377f9c4565c744d98f7c5a7187616e1b0db0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250222/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f87f104e252d05d4272ffa51fc1c0e86dc32bfe5f32269ca3049063d8676772c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250222/TensorFlowLiteCMetal.xcframework.zip", checksum: "10d70048d59dd5d1d1c4a2c410f411b748e9f351ac782e98f8831a3c6eb64dcc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
