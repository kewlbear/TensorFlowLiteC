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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240903/TensorFlowLiteC.xcframework.zip", checksum: "75d7d1a49ab0242fe90127409c7c96005845eb94e94dae16d57c23c80bfcb6a0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240903/TensorFlowLiteCCoreML.xcframework.zip", checksum: "21e91b04c1961b1c5c00914b94fdfff50118a4e96d27a45cc4fc2a4c0a888cd3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240903/TensorFlowLiteCMetal.xcframework.zip", checksum: "151ba02e73b8365001746942b93dd43954e2a53f6c92884b7a8b07e9080733fb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
